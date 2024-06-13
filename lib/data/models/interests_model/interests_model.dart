import 'package:freezed_annotation/freezed_annotation.dart';
part 'interests_model.freezed.dart';
part 'interests_model.g.dart';

@freezed
class Interest with _$Interest {
  const factory Interest({
    @Default(0) int id,
    @Default('') String uuid,
    @Default('') String title,
    @Default(0) int type,
    bool? isVillagerSpecific,
  }) = _Interest;

  factory Interest.fromJson(Map<String, dynamic> json) =>
      _$InterestFromJson(json);
}
