import 'package:DarkwebScan/features/darkweb_scan/domain/darkweb_scan_module_injector.dart';

import 'core_injector.dart';

void configureDependencies() {
  coreInjector().setup();
  darkwebScanModuleInjector().setup();
}
