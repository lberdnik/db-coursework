import 'package:freezed_annotation/freezed_annotation.dart';

part 'carriages_request.freezed.dart';
part 'carriages_request.g.dart';

@freezed
class CarriagesRequest with _$CarriagesRequest {
  const factory CarriagesRequest({
    required int id,
  }) = _CarriagesRequest;

  factory CarriagesRequest.fromJson(Map<String, Object?> json) =>
      _$CarriagesRequestFromJson(json);
}
