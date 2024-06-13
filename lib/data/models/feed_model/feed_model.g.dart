// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedModelImpl _$$FeedModelImplFromJson(Map<String, dynamic> json) =>
    _$FeedModelImpl(
      uuid: json['uuid'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      caption: json['caption'] as String? ?? '',
      isReported: json['isReported'] as bool? ?? false,
      isAlert: json['isAlert'] as bool? ?? false,
      createdAt: (json['createdAt'] as num?)?.toInt() ?? 0,
      updatedAt: (json['updatedAt'] as num?)?.toInt() ?? 0,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      videos: (json['videos'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      customer: json['customer'] == null
          ? const Customer()
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FeedModelImplToJson(_$FeedModelImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'userId': instance.userId,
      'caption': instance.caption,
      'isReported': instance.isReported,
      'isAlert': instance.isAlert,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'images': instance.images,
      'videos': instance.videos,
      'customer': instance.customer,
      'interests': instance.interests,
    };
