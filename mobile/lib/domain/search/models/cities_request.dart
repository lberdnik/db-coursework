import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_request.freezed.dart';
part 'cities_request.g.dart';

@freezed
class CitiesRequest with _$CitiesRequest {
  const factory CitiesRequest() = _CitiesRuquest;

  factory CitiesRequest.fromJson(Map<String, Object?> json) =>
      _$CitiesRequestFromJson(json);
}
