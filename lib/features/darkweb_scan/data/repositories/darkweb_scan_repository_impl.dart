import 'package:DarkwebScan/core/utilities/data/guarded_datasource_calls.dart';
import 'package:DarkwebScan/features/darkweb_scan/data/datasources/darkweb_scan_remote_datasource.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/models/breach_model.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/repositories/darkweb_scan_repository.dart';

class DarkwebScanRepositoryImpl implements DarkwebScanRepository {
  final DarkwebScanRemoteDatasource _remoteDatasource;

  DarkwebScanRepositoryImpl(this._remoteDatasource);

  @override
  Future<List<BreachModel>> scanWeb({email, phone}) async {
    final res = await guardedApiCall<List<BreachModel>>(() => _remoteDatasource.scanWeb(email: email, phone: phone));
    return res;
  }
}
