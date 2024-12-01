import 'package:freezed_annotation/freezed_annotation.dart';

part 'carriage_id_request.freezed.dart';
part 'carriage_id_request.g.dart';

@freezed
class CarriageIdRequest with _$CarriageIdRequest {
  const factory CarriageIdRequest({
    required int id,
  }) = _CarriageIdRequest;

  factory CarriageIdRequest.fromJson(Map<String, Object?> json) =>
      _$CarriageIdRequestFromJson(json);
}
