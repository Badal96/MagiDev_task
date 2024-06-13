// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interests_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Interest _$InterestFromJson(Map<String, dynamic> json) {
  return _Interest.fromJson(json);
}

/// @nodoc
mixin _$Interest {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  bool? get isVillagerSpecific => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterestCopyWith<Interest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestCopyWith<$Res> {
  factory $InterestCopyWith(Interest value, $Res Function(Interest) then) =
      _$InterestCopyWithImpl<$Res, Interest>;
  @useResult
  $Res call(
      {int id, String uuid, String title, int type, bool? isVillagerSpecific});
}

/// @nodoc
class _$InterestCopyWithImpl<$Res, $Val extends Interest>
    implements $InterestCopyWith<$Res> {
  _$InterestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? title = null,
    Object? type = null,
    Object? isVillagerSpecific = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      isVillagerSpecific: freezed == isVillagerSpecific
          ? _value.isVillagerSpecific
          : isVillagerSpecific // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterestImplCopyWith<$Res>
    implements $InterestCopyWith<$Res> {
  factory _$$InterestImplCopyWith(
          _$InterestImpl value, $Res Function(_$InterestImpl) then) =
      __$$InterestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String uuid, String title, int type, bool? isVillagerSpecific});
}

/// @nodoc
class __$$InterestImplCopyWithImpl<$Res>
    extends _$InterestCopyWithImpl<$Res, _$InterestImpl>
    implements _$$InterestImplCopyWith<$Res> {
  __$$InterestImplCopyWithImpl(
      _$InterestImpl _value, $Res Function(_$InterestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? title = null,
    Object? type = null,
    Object? isVillagerSpecific = freezed,
  }) {
    return _then(_$InterestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      isVillagerSpecific: freezed == isVillagerSpecific
          ? _value.isVillagerSpecific
          : isVillagerSpecific // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestImpl implements _Interest {
  const _$InterestImpl(
      {this.id = 0,
      this.uuid = '',
      this.title = '',
      this.type = 0,
      this.isVillagerSpecific});

  factory _$InterestImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterestImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String uuid;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int type;
  @override
  final bool? isVillagerSpecific;

  @override
  String toString() {
    return 'Interest(id: $id, uuid: $uuid, title: $title, type: $type, isVillagerSpecific: $isVillagerSpecific)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isVillagerSpecific, isVillagerSpecific) ||
                other.isVillagerSpecific == isVillagerSpecific));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, uuid, title, type, isVillagerSpecific);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestImplCopyWith<_$InterestImpl> get copyWith =>
      __$$InterestImplCopyWithImpl<_$InterestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestImplToJson(
      this,
    );
  }
}

abstract class _Interest implements Interest {
  const factory _Interest(
      {final int id,
      final String uuid,
      final String title,
      final int type,
      final bool? isVillagerSpecific}) = _$InterestImpl;

  factory _Interest.fromJson(Map<String, dynamic> json) =
      _$InterestImpl.fromJson;

  @override
  int get id;
  @override
  String get uuid;
  @override
  String get title;
  @override
  int get type;
  @override
  bool? get isVillagerSpecific;
  @override
  @JsonKey(ignore: true)
  _$$InterestImplCopyWith<_$InterestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
