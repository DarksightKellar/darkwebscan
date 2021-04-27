import 'package:DarkwebScan/core/failures.dart';
import 'package:DarkwebScan/core/usecase_typedefs.dart';
import 'package:DarkwebScan/core/utilities/error_helpers.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/models/breach_model.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/repositories/darkweb_scan_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' show required;

class ScanWeb implements Usecase<List<BreachModel>, ScanWebParams> {
  ScanWeb(this._repository);
  final DarkwebScanRepository _repository;

  @override
  Future<Either<UIError, List<BreachModel>>> call([params]) async {
    Usecase.assertParamsRequired(params);

    try {
      final res = await _repository.scanWeb(email: params.email, phone: params.phone);
      return Right(res);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}

class ScanWebParams {
  final String email;
  final String phone;

  const ScanWebParams({@required this.email, @required this.phone});
}
