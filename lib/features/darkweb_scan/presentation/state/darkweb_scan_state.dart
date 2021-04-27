part of 'darkweb_scan_cubit.dart';

@freezed
abstract class DarkwebScanState with _$DarkwebScanState {
  const factory DarkwebScanState.initial({@required DarkwebScanStatePayload payload}) = _InitialDarkwebScanState;
  const factory DarkwebScanState.loading({@required DarkwebScanStatePayload payload}) = _LoadingDarkwebScanState;
  const factory DarkwebScanState.loaded({@required DarkwebScanStatePayload payload}) = _LoadedDarkwebScanState;
  const factory DarkwebScanState.error({@required DarkwebScanStatePayload payload}) = _ErrorDarkwebScanState;
}

@freezed
abstract class DarkwebScanStatePayload with _$DarkwebScanStatePayload {
  const factory DarkwebScanStatePayload({
    @required List<BreachModel> breaches,
    @required String error,
  }) = _DarkwebScanStatePayload;
}
