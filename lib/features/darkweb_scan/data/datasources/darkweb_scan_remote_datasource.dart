import 'dart:async';

import 'package:DarkwebScan/core/data/datasources/remote_datasource_base.dart';
import 'package:DarkwebScan/core/data/network/network_service.dart';
import 'package:DarkwebScan/core/data/network/network_service_impl.dart';
import 'package:DarkwebScan/core/utilities/error_helpers.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/models/breach_model.dart';
import 'package:flutter/foundation.dart' show required;

abstract class DarkwebScanRemoteDatasource implements RemoteDatasource {
  Future<List<BreachModel>> scanWeb({@required String email, @required String phone});
}

class DarkwebScanRemoteDatasourceImpl implements DarkwebScanRemoteDatasource {
  final NetworkService _networkService;

  DarkwebScanRemoteDatasourceImpl(this._networkService);

  @override
  Future<List<BreachModel>> scanWeb({email, phone}) async {
    final _result = await _networkService.getHttp('/');

    if (_result['error'] != null) {
      await handleApiFailure(
        source: 'scanWeb',
        errorMessage: _result['message'] as String,
        errorCode: _result['error'] as ApiErrors,
      );

      return <BreachModel>[];
    } else {
      return _result['data'] == null
          ? <BreachModel>[]
          : (_result['data'] as List).map((e) => BreachModel.fromJson(e as Map<String, dynamic>)).toList();
    }
  }

  @override
  void dispose() {}
}
