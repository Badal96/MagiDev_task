// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      uuid: json['uuid'] as String,
      video: json['video'] as String,
      videoThumbnail: json['videoThumbnail'] as String,
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'video': instance.video,
      'videoThumbnail': instance.videoThumbnail,
      'order': instance.order,
    };
