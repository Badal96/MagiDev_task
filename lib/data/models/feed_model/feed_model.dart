import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_devs_task/data/models/customer_model/customer_model.dart';
import 'package:magic_devs_task/data/models/image_model/image_model.dart';
import 'package:magic_devs_task/data/models/interests_model/interests_model.dart';
import 'package:magic_devs_task/data/models/video_model/video_model.dart';
part 'feed_model.freezed.dart';
part 'feed_model.g.dart';

@freezed
class FeedModel with _$FeedModel {
  const factory FeedModel({
    @Default('') String uuid,
    @Default('') String userId,
    @Default('') String caption,
    @Default(false) bool isReported,
    @Default(false) bool isAlert,
    @Default(0) int createdAt,
    @Default(0) int updatedAt,
    @Default([]) List<Image> images,
    @Default([]) List<Video> videos,
    @Default(Customer()) Customer customer,
    @Default([]) List<Interest> interests,
  }) = _FeedModel;

  factory FeedModel.fromJson(Map<String, Object?> json) =>
      _$FeedModelFromJson(json);
}
