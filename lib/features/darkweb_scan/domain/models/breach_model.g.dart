// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breach_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BreachModel _$_$_BreachModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['DataClasses', 'LogoPath']);
  return _$_BreachModel(
    name: json['name'] as String,
    title: json['title'] as String,
    domain: json['domain'] as String,
    compromisedData:
        (json['DataClasses'] as List)?.map((e) => e as String)?.toList(),
    logoPath: json['LogoPath'] as String,
  );
}

Map<String, dynamic> _$_$_BreachModelToJson(_$_BreachModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'domain': instance.domain,
      'DataClasses': instance.compromisedData,
      'LogoPath': instance.logoPath,
    };
