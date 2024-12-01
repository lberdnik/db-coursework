import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/carriages/models/carriage_model.dart';

part 'carriages_response.freezed.dart';
part 'carriages_response.g.dart';

@freezed
class CarriagesResponse with _$CarriagesResponse {
  const factory CarriagesResponse({
    required List<CarriageModel> data,
  }) = _CarriagesResponse;

  factory CarriagesResponse.fromJson(Map<String, Object?> json) =>
      _$CarriagesResponseFromJson(json);
}
