import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/search/models/city_model.dart';

part 'cities_response.freezed.dart';
part 'cities_response.g.dart';

@freezed
class CitiesResponse with _$CitiesResponse {
  const factory CitiesResponse({
    @JsonKey()
    required List<CityModel> data,
  }) = _CitiesResponse;

  factory CitiesResponse.fromJson(Map<String, Object?> json) =>
      _$CitiesResponseFromJson(json);
}
