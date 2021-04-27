// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'darkweb_scan_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DarkwebScanStateTearOff {
  const _$DarkwebScanStateTearOff();

// ignore: unused_element
  _InitialDarkwebScanState initial(
      {@required DarkwebScanStatePayload payload}) {
    return _InitialDarkwebScanState(
      payload: payload,
    );
  }

// ignore: unused_element
  _LoadingDarkwebScanState loading(
      {@required DarkwebScanStatePayload payload}) {
    return _LoadingDarkwebScanState(
      payload: payload,
    );
  }

// ignore: unused_element
  _LoadedDarkwebScanState loaded({@required DarkwebScanStatePayload payload}) {
    return _LoadedDarkwebScanState(
      payload: payload,
    );
  }

// ignore: unused_element
  _ErrorDarkwebScanState error({@required DarkwebScanStatePayload payload}) {
    return _ErrorDarkwebScanState(
      payload: payload,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DarkwebScanState = _$DarkwebScanStateTearOff();

/// @nodoc
mixin _$DarkwebScanState {
  DarkwebScanStatePayload get payload;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(DarkwebScanStatePayload payload),
    @required TResult loading(DarkwebScanStatePayload payload),
    @required TResult loaded(DarkwebScanStatePayload payload),
    @required TResult error(DarkwebScanStatePayload payload),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(DarkwebScanStatePayload payload),
    TResult loading(DarkwebScanStatePayload payload),
    TResult loaded(DarkwebScanStatePayload payload),
    TResult error(DarkwebScanStatePayload payload),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDarkwebScanState value),
    @required TResult loading(_LoadingDarkwebScanState value),
    @required TResult loaded(_LoadedDarkwebScanState value),
    @required TResult error(_ErrorDarkwebScanState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDarkwebScanState value),
    TResult loading(_LoadingDarkwebScanState value),
    TResult loaded(_LoadedDarkwebScanState value),
    TResult error(_ErrorDarkwebScanState value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $DarkwebScanStateCopyWith<DarkwebScanState> get copyWith;
}

/// @nodoc
abstract class $DarkwebScanStateCopyWith<$Res> {
  factory $DarkwebScanStateCopyWith(
          DarkwebScanState value, $Res Function(DarkwebScanState) then) =
      _$DarkwebScanStateCopyWithImpl<$Res>;
  $Res call({DarkwebScanStatePayload payload});

  $DarkwebScanStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$DarkwebScanStateCopyWithImpl<$Res>
    implements $DarkwebScanStateCopyWith<$Res> {
  _$DarkwebScanStateCopyWithImpl(this._value, this._then);

  final DarkwebScanState _value;
  // ignore: unused_field
  final $Res Function(DarkwebScanState) _then;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_value.copyWith(
      payload: payload == freezed
          ? _value.payload
          : payload as DarkwebScanStatePayload,
    ));
  }

  @override
  $DarkwebScanStatePayloadCopyWith<$Res> get payload {
    if (_value.payload == null) {
      return null;
    }
    return $DarkwebScanStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$InitialDarkwebScanStateCopyWith<$Res>
    implements $DarkwebScanStateCopyWith<$Res> {
  factory _$InitialDarkwebScanStateCopyWith(_InitialDarkwebScanState value,
          $Res Function(_InitialDarkwebScanState) then) =
      __$InitialDarkwebScanStateCopyWithImpl<$Res>;
  @override
  $Res call({DarkwebScanStatePayload payload});

  @override
  $DarkwebScanStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$InitialDarkwebScanStateCopyWithImpl<$Res>
    extends _$DarkwebScanStateCopyWithImpl<$Res>
    implements _$InitialDarkwebScanStateCopyWith<$Res> {
  __$InitialDarkwebScanStateCopyWithImpl(_InitialDarkwebScanState _value,
      $Res Function(_InitialDarkwebScanState) _then)
      : super(_value, (v) => _then(v as _InitialDarkwebScanState));

  @override
  _InitialDarkwebScanState get _value =>
      super._value as _InitialDarkwebScanState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_InitialDarkwebScanState(
      payload: payload == freezed
          ? _value.payload
          : payload as DarkwebScanStatePayload,
    ));
  }
}

/// @nodoc
class _$_InitialDarkwebScanState implements _InitialDarkwebScanState {
  const _$_InitialDarkwebScanState({@required this.payload})
      : assert(payload != null);

  @override
  final DarkwebScanStatePayload payload;

  @override
  String toString() {
    return 'DarkwebScanState.initial(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialDarkwebScanState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$InitialDarkwebScanStateCopyWith<_InitialDarkwebScanState> get copyWith =>
      __$InitialDarkwebScanStateCopyWithImpl<_InitialDarkwebScanState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(DarkwebScanStatePayload payload),
    @required TResult loading(DarkwebScanStatePayload payload),
    @required TResult loaded(DarkwebScanStatePayload payload),
    @required TResult error(DarkwebScanStatePayload payload),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(DarkwebScanStatePayload payload),
    TResult loading(DarkwebScanStatePayload payload),
    TResult loaded(DarkwebScanStatePayload payload),
    TResult error(DarkwebScanStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDarkwebScanState value),
    @required TResult loading(_LoadingDarkwebScanState value),
    @required TResult loaded(_LoadedDarkwebScanState value),
    @required TResult error(_ErrorDarkwebScanState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDarkwebScanState value),
    TResult loading(_LoadingDarkwebScanState value),
    TResult loaded(_LoadedDarkwebScanState value),
    TResult error(_ErrorDarkwebScanState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialDarkwebScanState implements DarkwebScanState {
  const factory _InitialDarkwebScanState(
      {@required DarkwebScanStatePayload payload}) = _$_InitialDarkwebScanState;

  @override
  DarkwebScanStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$InitialDarkwebScanStateCopyWith<_InitialDarkwebScanState> get copyWith;
}

/// @nodoc
abstract class _$LoadingDarkwebScanStateCopyWith<$Res>
    implements $DarkwebScanStateCopyWith<$Res> {
  factory _$LoadingDarkwebScanStateCopyWith(_LoadingDarkwebScanState value,
          $Res Function(_LoadingDarkwebScanState) then) =
      __$LoadingDarkwebScanStateCopyWithImpl<$Res>;
  @override
  $Res call({DarkwebScanStatePayload payload});

  @override
  $DarkwebScanStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadingDarkwebScanStateCopyWithImpl<$Res>
    extends _$DarkwebScanStateCopyWithImpl<$Res>
    implements _$LoadingDarkwebScanStateCopyWith<$Res> {
  __$LoadingDarkwebScanStateCopyWithImpl(_LoadingDarkwebScanState _value,
      $Res Function(_LoadingDarkwebScanState) _then)
      : super(_value, (v) => _then(v as _LoadingDarkwebScanState));

  @override
  _LoadingDarkwebScanState get _value =>
      super._value as _LoadingDarkwebScanState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_LoadingDarkwebScanState(
      payload: payload == freezed
          ? _value.payload
          : payload as DarkwebScanStatePayload,
    ));
  }
}

/// @nodoc
class _$_LoadingDarkwebScanState implements _LoadingDarkwebScanState {
  const _$_LoadingDarkwebScanState({@required this.payload})
      : assert(payload != null);

  @override
  final DarkwebScanStatePayload payload;

  @override
  String toString() {
    return 'DarkwebScanState.loading(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingDarkwebScanState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadingDarkwebScanStateCopyWith<_LoadingDarkwebScanState> get copyWith =>
      __$LoadingDarkwebScanStateCopyWithImpl<_LoadingDarkwebScanState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(DarkwebScanStatePayload payload),
    @required TResult loading(DarkwebScanStatePayload payload),
    @required TResult loaded(DarkwebScanStatePayload payload),
    @required TResult error(DarkwebScanStatePayload payload),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(DarkwebScanStatePayload payload),
    TResult loading(DarkwebScanStatePayload payload),
    TResult loaded(DarkwebScanStatePayload payload),
    TResult error(DarkwebScanStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDarkwebScanState value),
    @required TResult loading(_LoadingDarkwebScanState value),
    @required TResult loaded(_LoadedDarkwebScanState value),
    @required TResult error(_ErrorDarkwebScanState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDarkwebScanState value),
    TResult loading(_LoadingDarkwebScanState value),
    TResult loaded(_LoadedDarkwebScanState value),
    TResult error(_ErrorDarkwebScanState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingDarkwebScanState implements DarkwebScanState {
  const factory _LoadingDarkwebScanState(
      {@required DarkwebScanStatePayload payload}) = _$_LoadingDarkwebScanState;

  @override
  DarkwebScanStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$LoadingDarkwebScanStateCopyWith<_LoadingDarkwebScanState> get copyWith;
}

/// @nodoc
abstract class _$LoadedDarkwebScanStateCopyWith<$Res>
    implements $DarkwebScanStateCopyWith<$Res> {
  factory _$LoadedDarkwebScanStateCopyWith(_LoadedDarkwebScanState value,
          $Res Function(_LoadedDarkwebScanState) then) =
      __$LoadedDarkwebScanStateCopyWithImpl<$Res>;
  @override
  $Res call({DarkwebScanStatePayload payload});

  @override
  $DarkwebScanStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$LoadedDarkwebScanStateCopyWithImpl<$Res>
    extends _$DarkwebScanStateCopyWithImpl<$Res>
    implements _$LoadedDarkwebScanStateCopyWith<$Res> {
  __$LoadedDarkwebScanStateCopyWithImpl(_LoadedDarkwebScanState _value,
      $Res Function(_LoadedDarkwebScanState) _then)
      : super(_value, (v) => _then(v as _LoadedDarkwebScanState));

  @override
  _LoadedDarkwebScanState get _value => super._value as _LoadedDarkwebScanState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_LoadedDarkwebScanState(
      payload: payload == freezed
          ? _value.payload
          : payload as DarkwebScanStatePayload,
    ));
  }
}

/// @nodoc
class _$_LoadedDarkwebScanState implements _LoadedDarkwebScanState {
  const _$_LoadedDarkwebScanState({@required this.payload})
      : assert(payload != null);

  @override
  final DarkwebScanStatePayload payload;

  @override
  String toString() {
    return 'DarkwebScanState.loaded(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedDarkwebScanState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$LoadedDarkwebScanStateCopyWith<_LoadedDarkwebScanState> get copyWith =>
      __$LoadedDarkwebScanStateCopyWithImpl<_LoadedDarkwebScanState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(DarkwebScanStatePayload payload),
    @required TResult loading(DarkwebScanStatePayload payload),
    @required TResult loaded(DarkwebScanStatePayload payload),
    @required TResult error(DarkwebScanStatePayload payload),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(DarkwebScanStatePayload payload),
    TResult loading(DarkwebScanStatePayload payload),
    TResult loaded(DarkwebScanStatePayload payload),
    TResult error(DarkwebScanStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDarkwebScanState value),
    @required TResult loading(_LoadingDarkwebScanState value),
    @required TResult loaded(_LoadedDarkwebScanState value),
    @required TResult error(_ErrorDarkwebScanState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDarkwebScanState value),
    TResult loading(_LoadingDarkwebScanState value),
    TResult loaded(_LoadedDarkwebScanState value),
    TResult error(_ErrorDarkwebScanState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedDarkwebScanState implements DarkwebScanState {
  const factory _LoadedDarkwebScanState(
      {@required DarkwebScanStatePayload payload}) = _$_LoadedDarkwebScanState;

  @override
  DarkwebScanStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$LoadedDarkwebScanStateCopyWith<_LoadedDarkwebScanState> get copyWith;
}

/// @nodoc
abstract class _$ErrorDarkwebScanStateCopyWith<$Res>
    implements $DarkwebScanStateCopyWith<$Res> {
  factory _$ErrorDarkwebScanStateCopyWith(_ErrorDarkwebScanState value,
          $Res Function(_ErrorDarkwebScanState) then) =
      __$ErrorDarkwebScanStateCopyWithImpl<$Res>;
  @override
  $Res call({DarkwebScanStatePayload payload});

  @override
  $DarkwebScanStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$ErrorDarkwebScanStateCopyWithImpl<$Res>
    extends _$DarkwebScanStateCopyWithImpl<$Res>
    implements _$ErrorDarkwebScanStateCopyWith<$Res> {
  __$ErrorDarkwebScanStateCopyWithImpl(_ErrorDarkwebScanState _value,
      $Res Function(_ErrorDarkwebScanState) _then)
      : super(_value, (v) => _then(v as _ErrorDarkwebScanState));

  @override
  _ErrorDarkwebScanState get _value => super._value as _ErrorDarkwebScanState;

  @override
  $Res call({
    Object payload = freezed,
  }) {
    return _then(_ErrorDarkwebScanState(
      payload: payload == freezed
          ? _value.payload
          : payload as DarkwebScanStatePayload,
    ));
  }
}

/// @nodoc
class _$_ErrorDarkwebScanState implements _ErrorDarkwebScanState {
  const _$_ErrorDarkwebScanState({@required this.payload})
      : assert(payload != null);

  @override
  final DarkwebScanStatePayload payload;

  @override
  String toString() {
    return 'DarkwebScanState.error(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorDarkwebScanState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$ErrorDarkwebScanStateCopyWith<_ErrorDarkwebScanState> get copyWith =>
      __$ErrorDarkwebScanStateCopyWithImpl<_ErrorDarkwebScanState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(DarkwebScanStatePayload payload),
    @required TResult loading(DarkwebScanStatePayload payload),
    @required TResult loaded(DarkwebScanStatePayload payload),
    @required TResult error(DarkwebScanStatePayload payload),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(DarkwebScanStatePayload payload),
    TResult loading(DarkwebScanStatePayload payload),
    TResult loaded(DarkwebScanStatePayload payload),
    TResult error(DarkwebScanStatePayload payload),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDarkwebScanState value),
    @required TResult loading(_LoadingDarkwebScanState value),
    @required TResult loaded(_LoadedDarkwebScanState value),
    @required TResult error(_ErrorDarkwebScanState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDarkwebScanState value),
    TResult loading(_LoadingDarkwebScanState value),
    TResult loaded(_LoadedDarkwebScanState value),
    TResult error(_ErrorDarkwebScanState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorDarkwebScanState implements DarkwebScanState {
  const factory _ErrorDarkwebScanState(
      {@required DarkwebScanStatePayload payload}) = _$_ErrorDarkwebScanState;

  @override
  DarkwebScanStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$ErrorDarkwebScanStateCopyWith<_ErrorDarkwebScanState> get copyWith;
}

/// @nodoc
class _$DarkwebScanStatePayloadTearOff {
  const _$DarkwebScanStatePayloadTearOff();

// ignore: unused_element
  _DarkwebScanStatePayload call(
      {@required List<BreachModel> breaches, @required String error}) {
    return _DarkwebScanStatePayload(
      breaches: breaches,
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DarkwebScanStatePayload = _$DarkwebScanStatePayloadTearOff();

/// @nodoc
mixin _$DarkwebScanStatePayload {
  List<BreachModel> get breaches;
  String get error;

  @JsonKey(ignore: true)
  $DarkwebScanStatePayloadCopyWith<DarkwebScanStatePayload> get copyWith;
}

/// @nodoc
abstract class $DarkwebScanStatePayloadCopyWith<$Res> {
  factory $DarkwebScanStatePayloadCopyWith(DarkwebScanStatePayload value,
          $Res Function(DarkwebScanStatePayload) then) =
      _$DarkwebScanStatePayloadCopyWithImpl<$Res>;
  $Res call({List<BreachModel> breaches, String error});
}

/// @nodoc
class _$DarkwebScanStatePayloadCopyWithImpl<$Res>
    implements $DarkwebScanStatePayloadCopyWith<$Res> {
  _$DarkwebScanStatePayloadCopyWithImpl(this._value, this._then);

  final DarkwebScanStatePayload _value;
  // ignore: unused_field
  final $Res Function(DarkwebScanStatePayload) _then;

  @override
  $Res call({
    Object breaches = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      breaches:
          breaches == freezed ? _value.breaches : breaches as List<BreachModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
abstract class _$DarkwebScanStatePayloadCopyWith<$Res>
    implements $DarkwebScanStatePayloadCopyWith<$Res> {
  factory _$DarkwebScanStatePayloadCopyWith(_DarkwebScanStatePayload value,
          $Res Function(_DarkwebScanStatePayload) then) =
      __$DarkwebScanStatePayloadCopyWithImpl<$Res>;
  @override
  $Res call({List<BreachModel> breaches, String error});
}

/// @nodoc
class __$DarkwebScanStatePayloadCopyWithImpl<$Res>
    extends _$DarkwebScanStatePayloadCopyWithImpl<$Res>
    implements _$DarkwebScanStatePayloadCopyWith<$Res> {
  __$DarkwebScanStatePayloadCopyWithImpl(_DarkwebScanStatePayload _value,
      $Res Function(_DarkwebScanStatePayload) _then)
      : super(_value, (v) => _then(v as _DarkwebScanStatePayload));

  @override
  _DarkwebScanStatePayload get _value =>
      super._value as _DarkwebScanStatePayload;

  @override
  $Res call({
    Object breaches = freezed,
    Object error = freezed,
  }) {
    return _then(_DarkwebScanStatePayload(
      breaches:
          breaches == freezed ? _value.breaches : breaches as List<BreachModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_DarkwebScanStatePayload implements _DarkwebScanStatePayload {
  const _$_DarkwebScanStatePayload(
      {@required this.breaches, @required this.error})
      : assert(breaches != null),
        assert(error != null);

  @override
  final List<BreachModel> breaches;
  @override
  final String error;

  @override
  String toString() {
    return 'DarkwebScanStatePayload(breaches: $breaches, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DarkwebScanStatePayload &&
            (identical(other.breaches, breaches) ||
                const DeepCollectionEquality()
                    .equals(other.breaches, breaches)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(breaches) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$DarkwebScanStatePayloadCopyWith<_DarkwebScanStatePayload> get copyWith =>
      __$DarkwebScanStatePayloadCopyWithImpl<_DarkwebScanStatePayload>(
          this, _$identity);
}

abstract class _DarkwebScanStatePayload implements DarkwebScanStatePayload {
  const factory _DarkwebScanStatePayload(
      {@required List<BreachModel> breaches,
      @required String error}) = _$_DarkwebScanStatePayload;

  @override
  List<BreachModel> get breaches;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$DarkwebScanStatePayloadCopyWith<_DarkwebScanStatePayload> get copyWith;
}
