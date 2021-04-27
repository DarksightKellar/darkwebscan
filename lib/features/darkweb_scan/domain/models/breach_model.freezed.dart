// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'breach_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BreachModel _$BreachModelFromJson(Map<String, dynamic> json) {
  return _BreachModel.fromJson(json);
}

/// @nodoc
class _$BreachModelTearOff {
  const _$BreachModelTearOff();

// ignore: unused_element
  _BreachModel call(
      {@JsonKey(name: 'Name', required: true)
          String name,
      @JsonKey(name: 'Title', required: true)
          String title,
      @JsonKey(name: 'Domain', required: true)
          String domain,
      @JsonKey(name: 'DataClasses', required: true)
          List<String> compromisedData,
      @JsonKey(name: 'LogoPath', required: true)
          String logoPath}) {
    return _BreachModel(
      name: name,
      title: title,
      domain: domain,
      compromisedData: compromisedData,
      logoPath: logoPath,
    );
  }

// ignore: unused_element
  BreachModel fromJson(Map<String, Object> json) {
    return BreachModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BreachModel = _$BreachModelTearOff();

/// @nodoc
mixin _$BreachModel {
  @JsonKey(name: 'Name', required: true)
  String get name;
  @JsonKey(name: 'Title', required: true)
  String get title;
  @JsonKey(name: 'Domain', required: true)
  String get domain;
  @JsonKey(name: 'DataClasses', required: true)
  List<String> get compromisedData;
  @JsonKey(name: 'LogoPath', required: true)
  String get logoPath;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BreachModelCopyWith<BreachModel> get copyWith;
}

/// @nodoc
abstract class $BreachModelCopyWith<$Res> {
  factory $BreachModelCopyWith(
          BreachModel value, $Res Function(BreachModel) then) =
      _$BreachModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Name', required: true)
          String name,
      @JsonKey(name: 'Title', required: true)
          String title,
      @JsonKey(name: 'Domain', required: true)
          String domain,
      @JsonKey(name: 'DataClasses', required: true)
          List<String> compromisedData,
      @JsonKey(name: 'LogoPath', required: true)
          String logoPath});
}

/// @nodoc
class _$BreachModelCopyWithImpl<$Res> implements $BreachModelCopyWith<$Res> {
  _$BreachModelCopyWithImpl(this._value, this._then);

  final BreachModel _value;
  // ignore: unused_field
  final $Res Function(BreachModel) _then;

  @override
  $Res call({
    Object name = freezed,
    Object title = freezed,
    Object domain = freezed,
    Object compromisedData = freezed,
    Object logoPath = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      title: title == freezed ? _value.title : title as String,
      domain: domain == freezed ? _value.domain : domain as String,
      compromisedData: compromisedData == freezed
          ? _value.compromisedData
          : compromisedData as List<String>,
      logoPath: logoPath == freezed ? _value.logoPath : logoPath as String,
    ));
  }
}

/// @nodoc
abstract class _$BreachModelCopyWith<$Res>
    implements $BreachModelCopyWith<$Res> {
  factory _$BreachModelCopyWith(
          _BreachModel value, $Res Function(_BreachModel) then) =
      __$BreachModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Name', required: true)
          String name,
      @JsonKey(name: 'Title', required: true)
          String title,
      @JsonKey(name: 'Domain', required: true)
          String domain,
      @JsonKey(name: 'DataClasses', required: true)
          List<String> compromisedData,
      @JsonKey(name: 'LogoPath', required: true)
          String logoPath});
}

/// @nodoc
class __$BreachModelCopyWithImpl<$Res> extends _$BreachModelCopyWithImpl<$Res>
    implements _$BreachModelCopyWith<$Res> {
  __$BreachModelCopyWithImpl(
      _BreachModel _value, $Res Function(_BreachModel) _then)
      : super(_value, (v) => _then(v as _BreachModel));

  @override
  _BreachModel get _value => super._value as _BreachModel;

  @override
  $Res call({
    Object name = freezed,
    Object title = freezed,
    Object domain = freezed,
    Object compromisedData = freezed,
    Object logoPath = freezed,
  }) {
    return _then(_BreachModel(
      name: name == freezed ? _value.name : name as String,
      title: title == freezed ? _value.title : title as String,
      domain: domain == freezed ? _value.domain : domain as String,
      compromisedData: compromisedData == freezed
          ? _value.compromisedData
          : compromisedData as List<String>,
      logoPath: logoPath == freezed ? _value.logoPath : logoPath as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BreachModel implements _BreachModel {
  const _$_BreachModel(
      {@JsonKey(name: 'Name', required: true) this.name,
      @JsonKey(name: 'Title', required: true) this.title,
      @JsonKey(name: 'Domain', required: true) this.domain,
      @JsonKey(name: 'DataClasses', required: true) this.compromisedData,
      @JsonKey(name: 'LogoPath', required: true) this.logoPath});

  factory _$_BreachModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BreachModelFromJson(json);

  @override
  @JsonKey(name: 'Name', required: true)
  final String name;
  @override
  @JsonKey(name: 'Title', required: true)
  final String title;
  @override
  @JsonKey(name: 'Domain', required: true)
  final String domain;
  @override
  @JsonKey(name: 'DataClasses', required: true)
  final List<String> compromisedData;
  @override
  @JsonKey(name: 'LogoPath', required: true)
  final String logoPath;

  @override
  String toString() {
    return 'BreachModel(name: $name, title: $title, domain: $domain, compromisedData: $compromisedData, logoPath: $logoPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BreachModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.domain, domain) ||
                const DeepCollectionEquality().equals(other.domain, domain)) &&
            (identical(other.compromisedData, compromisedData) ||
                const DeepCollectionEquality()
                    .equals(other.compromisedData, compromisedData)) &&
            (identical(other.logoPath, logoPath) ||
                const DeepCollectionEquality()
                    .equals(other.logoPath, logoPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(domain) ^
      const DeepCollectionEquality().hash(compromisedData) ^
      const DeepCollectionEquality().hash(logoPath);

  @JsonKey(ignore: true)
  @override
  _$BreachModelCopyWith<_BreachModel> get copyWith =>
      __$BreachModelCopyWithImpl<_BreachModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BreachModelToJson(this);
  }
}

abstract class _BreachModel implements BreachModel {
  const factory _BreachModel(
      {@JsonKey(name: 'Name', required: true)
          String name,
      @JsonKey(name: 'Title', required: true)
          String title,
      @JsonKey(name: 'Domain', required: true)
          String domain,
      @JsonKey(name: 'DataClasses', required: true)
          List<String> compromisedData,
      @JsonKey(name: 'LogoPath', required: true)
          String logoPath}) = _$_BreachModel;

  factory _BreachModel.fromJson(Map<String, dynamic> json) =
      _$_BreachModel.fromJson;

  @override
  @JsonKey(name: 'Name', required: true)
  String get name;
  @override
  @JsonKey(name: 'Title', required: true)
  String get title;
  @override
  @JsonKey(name: 'Domain', required: true)
  String get domain;
  @override
  @JsonKey(name: 'DataClasses', required: true)
  List<String> get compromisedData;
  @override
  @JsonKey(name: 'LogoPath', required: true)
  String get logoPath;
  @override
  @JsonKey(ignore: true)
  _$BreachModelCopyWith<_BreachModel> get copyWith;
}
