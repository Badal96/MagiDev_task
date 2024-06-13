import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class Video with _$Video {
  const factory Video({
    required String uuid,
    required String video,
    required String videoThumbnail,
    required int order,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
