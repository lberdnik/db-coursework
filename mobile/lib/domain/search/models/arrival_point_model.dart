import 'package:freezed_annotation/freezed_annotation.dart';

part 'arrival_point_model.freezed.dart';
part 'arrival_point_model.g.dart';

@freezed
class ArrivalPointModel with _$ArrivalPointModel {
  const factory ArrivalPointModel({
    required int id,
    required String arrivalCity,
    required String arrivalPlace,
    String? arrivalTime,
    String? price,
    int? order,
  }) = _ArrivalPointModel;

  factory ArrivalPointModel.fromJson(Map<String, Object?> json) =>
      _$ArrivalPointModelFromJson(json);
}
