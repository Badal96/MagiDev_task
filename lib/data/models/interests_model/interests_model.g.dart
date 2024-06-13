// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interests_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterestImpl _$$InterestImplFromJson(Map<String, dynamic> json) =>
    _$InterestImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      uuid: json['uuid'] as String? ?? '',
      title: json['title'] as String? ?? '',
      type: (json['type'] as num?)?.toInt() ?? 0,
      isVillagerSpecific: json['isVillagerSpecific'] as bool?,
    );

Map<String, dynamic> _$$InterestImplToJson(_$InterestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'title': instance.title,
      'type': instance.type,
      'isVillagerSpecific': instance.isVillagerSpecific,
    };
