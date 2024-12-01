import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_carriages_model.freezed.dart';
part 'route_carriages_model.g.dart';

@freezed
class RouteCarriagesModel with _$RouteCarriagesModel {
  const factory RouteCarriagesModel({
    required int availableSeatsAmount,
    required double price,
  }) = _RouteCarriagesModel;

  factory RouteCarriagesModel.fromJson(Map<String, Object?> json) =>
      _$RouteCarriagesModelFromJson(json);
}
