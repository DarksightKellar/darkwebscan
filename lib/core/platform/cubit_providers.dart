import 'package:DarkwebScan/features/darkweb_scan/domain/darkweb_scan_module_injector.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/usecases/scan_web.dart';
import 'package:DarkwebScan/features/darkweb_scan/presentation/state/darkweb_scan_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final providers = [
  BlocProvider<DarkwebScanCubit>(
    create: (_) => DarkwebScanCubit(DarkwebScanModuleInjector.resolve<ScanWeb>()),
  ),
];
