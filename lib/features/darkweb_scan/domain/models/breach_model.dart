import 'package:freezed_annotation/freezed_annotation.dart';

part 'breach_model.freezed.dart';
part 'breach_model.g.dart';

@freezed
abstract class BreachModel with _$BreachModel {
  const factory BreachModel({
    @JsonKey(name: 'Name', required: true) String name,
    @JsonKey(name: 'Title', required: true) String title,
    @JsonKey(name: 'Domain', required: true) String domain,
    @JsonKey(name: 'DataClasses', required: true) List<String> compromisedData,
    @JsonKey(name: 'LogoPath', required: true) String logoPath,
  }) = _BreachModel;

  factory BreachModel.fromJson(Map<String, dynamic> json) => _$BreachModelFromJson(json);
}
