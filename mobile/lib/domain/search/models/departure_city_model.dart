import 'package:freezed_annotation/freezed_annotation.dart';

part 'departure_city_model.freezed.dart';
part 'departure_city_model.g.dart';

@freezed
class DepartureCityModel with _$DepartureCityModel {
  const factory DepartureCityModel({
    @JsonKey(name: 'arrival_city') required String arrivalCity,
    @JsonKey(name: 'arrival_place') required String arrivalPlace,
    int? id,
  }) = _DepartureCityModel;

  factory DepartureCityModel.fromJson(Map<String, Object?> json) =>
      _$DepartureCityModelFromJson(json);
}
