import 'package:DarkwebScan/core/data/network/network_service.dart';
import 'package:DarkwebScan/features/darkweb_scan/data/datasources/darkweb_scan_remote_datasource.dart';
import 'package:DarkwebScan/features/darkweb_scan/data/repositories/darkweb_scan_repository_impl.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/usecases/scan_web.dart';
import 'package:kiwi/kiwi.dart';

import 'repositories/darkweb_scan_repository.dart';

part 'darkweb_scan_module_injector.g.dart';

abstract class DarkwebScanModuleInjector {
  static KiwiContainer container;
  static final resolve = container.resolve;

  void setup() {
    container = KiwiContainer();
    _$DarkwebScanModuleInjector()._configure();
  }

  @Register.factory(DarkwebScanRemoteDatasource, from: DarkwebScanRemoteDatasourceImpl)
  @Register.factory(DarkwebScanRepository, from: DarkwebScanRepositoryImpl)
  @Register.singleton(ScanWeb)
  void _configure(); // ignore: unused_element
}

DarkwebScanModuleInjector darkwebScanModuleInjector() => _$DarkwebScanModuleInjector();
