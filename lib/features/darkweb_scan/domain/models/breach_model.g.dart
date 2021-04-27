// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breach_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BreachModel _$_$_BreachModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const [
    'Name',
    'Title',
    'Domain',
    'DataClasses',
    'LogoPath'
  ]);
  return _$_BreachModel(
    name: json['Name'] as String,
    title: json['Title'] as String,
    domain: json['Domain'] as String,
    compromisedData:
        (json['DataClasses'] as List)?.map((e) => e as String)?.toList(),
    logoPath: json['LogoPath'] as String,
  );
}

Map<String, dynamic> _$_$_BreachModelToJson(_$_BreachModel instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Title': instance.title,
      'Domain': instance.domain,
      'DataClasses': instance.compromisedData,
      'LogoPath': instance.logoPath,
    };
