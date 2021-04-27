// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'darkweb_scan_module_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$DarkwebScanModuleInjector extends DarkwebScanModuleInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory<DarkwebScanRemoteDatasource>(
        (c) => DarkwebScanRemoteDatasourceImpl(c<NetworkService>()));
    container.registerFactory<DarkwebScanRepository>(
        (c) => DarkwebScanRepositoryImpl(c<DarkwebScanRemoteDatasource>()));
    container.registerSingleton((c) => ScanWeb(c<DarkwebScanRepository>()));
  }
}
