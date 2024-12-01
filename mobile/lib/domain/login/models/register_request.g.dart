// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterRequest _$$_RegisterRequestFromJson(Map<String, dynamic> json) =>
    _$_RegisterRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      lastName: json['last_name'] as String,
      firstName: json['first_name'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_RegisterRequestToJson(_$_RegisterRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'last_name': instance.lastName,
      'first_name': instance.firstName,
      'username': instance.username,
    };
