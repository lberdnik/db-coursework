import 'package:freezed_annotation/freezed_annotation.dart';

part 'discounts_request.freezed.dart';
part 'discounts_request.g.dart';

@freezed
class DiscountsRequest with _$DiscountsRequest {
  const factory DiscountsRequest() = _DiscountsRequest;

  factory DiscountsRequest.fromJson(Map<String, Object?> json) =>
      _$DiscountsRequestFromJson(json);
}
