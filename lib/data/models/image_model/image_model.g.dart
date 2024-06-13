// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      uuid: json['uuid'] as String,
      image: json['image'] as String,
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'image': instance.image,
      'order': instance.order,
    };
