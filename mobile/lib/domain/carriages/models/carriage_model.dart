import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/search/models/route_model.dart';

part 'carriage_model.freezed.dart';
part 'carriage_model.g.dart';

@freezed
class CarriageModel with _$CarriageModel {
  const factory CarriageModel({
    int? id,
    required int carriageType,
    required int seatAmount,
    required RouteModel route,
    required List<int> availableSeats,
  }) = _CarriageModel;

  factory CarriageModel.fromJson(Map<String, Object?> json) =>
      _$CarriageModelFromJson(json);
}
