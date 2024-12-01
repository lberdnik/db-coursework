// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as int,
      orderStatus: json['order_status'] as String,
      totalPrice: json['total_price'] as String?,
      orderedTickets: (json['ordered_tickets'] as List<dynamic>?)
          ?.map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] as int?,
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_status': instance.orderStatus,
      'total_price': instance.totalPrice,
      'ordered_tickets':
          instance.orderedTickets?.map((e) => e.toJson()).toList(),
      'user': instance.user,
    };
