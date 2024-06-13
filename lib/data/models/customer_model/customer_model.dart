import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_devs_task/config/assets.dart';
part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    @Default('') String uuid,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default(Assets.defaultAvatar) String image,
    @Default('department') String department,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
