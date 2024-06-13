// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedModel _$FeedModelFromJson(Map<String, dynamic> json) {
  return _FeedModel.fromJson(json);
}

/// @nodoc
mixin _$FeedModel {
  String get uuid => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;
  bool get isReported => throw _privateConstructorUsedError;
  bool get isAlert => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  int get updatedAt => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;
  List<Video> get videos => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  List<Interest> get interests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedModelCopyWith<FeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedModelCopyWith<$Res> {
  factory $FeedModelCopyWith(FeedModel value, $Res Function(FeedModel) then) =
      _$FeedModelCopyWithImpl<$Res, FeedModel>;
  @useResult
  $Res call(
      {String uuid,
      String userId,
      String caption,
      bool isReported,
      bool isAlert,
      int createdAt,
      int updatedAt,
      List<Image> images,
      List<Video> videos,
      Customer customer,
      List<Interest> interests});

  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class _$FeedModelCopyWithImpl<$Res, $Val extends FeedModel>
    implements $FeedModelCopyWith<$Res> {
  _$FeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? userId = null,
    Object? caption = null,
    Object? isReported = null,
    Object? isAlert = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? images = null,
    Object? videos = null,
    Object? customer = null,
    Object? interests = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      isReported: null == isReported
          ? _value.isReported
          : isReported // ignore: cast_nullable_to_non_nullable
              as bool,
      isAlert: null == isAlert
          ? _value.isAlert
          : isAlert // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedModelImplCopyWith<$Res>
    implements $FeedModelCopyWith<$Res> {
  factory _$$FeedModelImplCopyWith(
          _$FeedModelImpl value, $Res Function(_$FeedModelImpl) then) =
      __$$FeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String userId,
      String caption,
      bool isReported,
      bool isAlert,
      int createdAt,
      int updatedAt,
      List<Image> images,
      List<Video> videos,
      Customer customer,
      List<Interest> interests});

  @override
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$FeedModelImplCopyWithImpl<$Res>
    extends _$FeedModelCopyWithImpl<$Res, _$FeedModelImpl>
    implements _$$FeedModelImplCopyWith<$Res> {
  __$$FeedModelImplCopyWithImpl(
      _$FeedModelImpl _value, $Res Function(_$FeedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? userId = null,
    Object? caption = null,
    Object? isReported = null,
    Object? isAlert = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? images = null,
    Object? videos = null,
    Object? customer = null,
    Object? interests = null,
  }) {
    return _then(_$FeedModelImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      isReported: null == isReported
          ? _value.isReported
          : isReported // ignore: cast_nullable_to_non_nullable
              as bool,
      isAlert: null == isAlert
          ? _value.isAlert
          : isAlert // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      interests: null == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedModelImpl implements _FeedModel {
  const _$FeedModelImpl(
      {this.uuid = '',
      this.userId = '',
      this.caption = '',
      this.isReported = false,
      this.isAlert = false,
      this.createdAt = 0,
      this.updatedAt = 0,
      final List<Image> images = const [],
      final List<Video> videos = const [],
      this.customer = const Customer(),
      final List<Interest> interests = const []})
      : _images = images,
        _videos = videos,
        _interests = interests;

  factory _$FeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedModelImplFromJson(json);

  @override
  @JsonKey()
  final String uuid;
  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String caption;
  @override
  @JsonKey()
  final bool isReported;
  @override
  @JsonKey()
  final bool isAlert;
  @override
  @JsonKey()
  final int createdAt;
  @override
  @JsonKey()
  final int updatedAt;
  final List<Image> _images;
  @override
  @JsonKey()
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<Video> _videos;
  @override
  @JsonKey()
  List<Video> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  @JsonKey()
  final Customer customer;
  final List<Interest> _interests;
  @override
  @JsonKey()
  List<Interest> get interests {
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interests);
  }

  @override
  String toString() {
    return 'FeedModel(uuid: $uuid, userId: $userId, caption: $caption, isReported: $isReported, isAlert: $isAlert, createdAt: $createdAt, updatedAt: $updatedAt, images: $images, videos: $videos, customer: $customer, interests: $interests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedModelImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.isReported, isReported) ||
                other.isReported == isReported) &&
            (identical(other.isAlert, isAlert) || other.isAlert == isAlert) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      userId,
      caption,
      isReported,
      isAlert,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_videos),
      customer,
      const DeepCollectionEquality().hash(_interests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedModelImplCopyWith<_$FeedModelImpl> get copyWith =>
      __$$FeedModelImplCopyWithImpl<_$FeedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedModelImplToJson(
      this,
    );
  }
}

abstract class _FeedModel implements FeedModel {
  const factory _FeedModel(
      {final String uuid,
      final String userId,
      final String caption,
      final bool isReported,
      final bool isAlert,
      final int createdAt,
      final int updatedAt,
      final List<Image> images,
      final List<Video> videos,
      final Customer customer,
      final List<Interest> interests}) = _$FeedModelImpl;

  factory _FeedModel.fromJson(Map<String, dynamic> json) =
      _$FeedModelImpl.fromJson;

  @override
  String get uuid;
  @override
  String get userId;
  @override
  String get caption;
  @override
  bool get isReported;
  @override
  bool get isAlert;
  @override
  int get createdAt;
  @override
  int get updatedAt;
  @override
  List<Image> get images;
  @override
  List<Video> get videos;
  @override
  Customer get customer;
  @override
  List<Interest> get interests;
  @override
  @JsonKey(ignore: true)
  _$$FeedModelImplCopyWith<_$FeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
