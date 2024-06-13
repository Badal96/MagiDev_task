// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      uuid: json['uuid'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      image: json['image'] as String? ?? Assets.defaultAvatar,
      department: json['department'] as String? ?? 'department',
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'image': instance.image,
      'department': instance.department,
    };
