// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json[r'$id'] as String,
  name: json['name'] as String? ?? '',
  phoneNumber: json['phone'] as String? ?? '',
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      r'$id': instance.id,
      'name': instance.name,
      'phone': instance.phoneNumber,
    };
