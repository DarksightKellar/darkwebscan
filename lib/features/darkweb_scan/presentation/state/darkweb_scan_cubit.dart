import 'package:DarkwebScan/features/darkweb_scan/domain/models/breach_model.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/usecases/scan_web.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'darkweb_scan_cubit.freezed.dart';
part 'darkweb_scan_state.dart';

class DarkwebScanCubit extends Cubit<DarkwebScanState> {
  final ScanWeb _scanWeb;

  static const _initialDarkwebScanState = DarkwebScanState.initial(
    payload: DarkwebScanStatePayload(breaches: [], error: ''),
  );

  DarkwebScanCubit(this._scanWeb) : super(_initialDarkwebScanState);

  Future<void> scanWeb({
    @required String email,
    @required String phone,
  }) async {
    emit(DarkwebScanState.loading(payload: state.payload.copyWith()));
    final res = await _scanWeb(ScanWebParams(email: email, phone: phone));

    res.fold(
      (l) => emit(DarkwebScanState.error(payload: state.payload.copyWith(error: l.message))),
      (r) => emit(DarkwebScanState.loaded(payload: state.payload.copyWith(breaches: r))),
    );
  }
}
