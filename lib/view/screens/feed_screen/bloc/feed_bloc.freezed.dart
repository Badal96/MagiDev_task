// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int count) getFeed,
    required TResult Function(FeedFilter filter) changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset, int count)? getFeed,
    TResult? Function(FeedFilter filter)? changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int count)? getFeed,
    TResult Function(FeedFilter filter)? changeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFeed value) getFeed,
    required TResult Function(_ChangeFilter value) changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFeed value)? getFeed,
    TResult? Function(_ChangeFilter value)? changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFeed value)? getFeed,
    TResult Function(_ChangeFilter value)? changeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res, FeedEvent>;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res, $Val extends FeedEvent>
    implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFeedImplCopyWith<$Res> {
  factory _$$GetFeedImplCopyWith(
          _$GetFeedImpl value, $Res Function(_$GetFeedImpl) then) =
      __$$GetFeedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int offset, int count});
}

/// @nodoc
class __$$GetFeedImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$GetFeedImpl>
    implements _$$GetFeedImplCopyWith<$Res> {
  __$$GetFeedImplCopyWithImpl(
      _$GetFeedImpl _value, $Res Function(_$GetFeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? count = null,
  }) {
    return _then(_$GetFeedImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetFeedImpl implements _GetFeed {
  const _$GetFeedImpl({required this.offset, required this.count});

  @override
  final int offset;
  @override
  final int count;

  @override
  String toString() {
    return 'FeedEvent.getFeed(offset: $offset, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedImplCopyWith<_$GetFeedImpl> get copyWith =>
      __$$GetFeedImplCopyWithImpl<_$GetFeedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int count) getFeed,
    required TResult Function(FeedFilter filter) changeFilter,
  }) {
    return getFeed(offset, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset, int count)? getFeed,
    TResult? Function(FeedFilter filter)? changeFilter,
  }) {
    return getFeed?.call(offset, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int count)? getFeed,
    TResult Function(FeedFilter filter)? changeFilter,
    required TResult orElse(),
  }) {
    if (getFeed != null) {
      return getFeed(offset, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFeed value) getFeed,
    required TResult Function(_ChangeFilter value) changeFilter,
  }) {
    return getFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFeed value)? getFeed,
    TResult? Function(_ChangeFilter value)? changeFilter,
  }) {
    return getFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFeed value)? getFeed,
    TResult Function(_ChangeFilter value)? changeFilter,
    required TResult orElse(),
  }) {
    if (getFeed != null) {
      return getFeed(this);
    }
    return orElse();
  }
}

abstract class _GetFeed implements FeedEvent {
  const factory _GetFeed(
      {required final int offset, required final int count}) = _$GetFeedImpl;

  int get offset;
  int get count;
  @JsonKey(ignore: true)
  _$$GetFeedImplCopyWith<_$GetFeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFilterImplCopyWith<$Res> {
  factory _$$ChangeFilterImplCopyWith(
          _$ChangeFilterImpl value, $Res Function(_$ChangeFilterImpl) then) =
      __$$ChangeFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedFilter filter});
}

/// @nodoc
class __$$ChangeFilterImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$ChangeFilterImpl>
    implements _$$ChangeFilterImplCopyWith<$Res> {
  __$$ChangeFilterImplCopyWithImpl(
      _$ChangeFilterImpl _value, $Res Function(_$ChangeFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$ChangeFilterImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FeedFilter,
    ));
  }
}

/// @nodoc

class _$ChangeFilterImpl implements _ChangeFilter {
  const _$ChangeFilterImpl(this.filter);

  @override
  final FeedFilter filter;

  @override
  String toString() {
    return 'FeedEvent.changeFilter(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFilterImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFilterImplCopyWith<_$ChangeFilterImpl> get copyWith =>
      __$$ChangeFilterImplCopyWithImpl<_$ChangeFilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int count) getFeed,
    required TResult Function(FeedFilter filter) changeFilter,
  }) {
    return changeFilter(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset, int count)? getFeed,
    TResult? Function(FeedFilter filter)? changeFilter,
  }) {
    return changeFilter?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int count)? getFeed,
    TResult Function(FeedFilter filter)? changeFilter,
    required TResult orElse(),
  }) {
    if (changeFilter != null) {
      return changeFilter(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFeed value) getFeed,
    required TResult Function(_ChangeFilter value) changeFilter,
  }) {
    return changeFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFeed value)? getFeed,
    TResult? Function(_ChangeFilter value)? changeFilter,
  }) {
    return changeFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFeed value)? getFeed,
    TResult Function(_ChangeFilter value)? changeFilter,
    required TResult orElse(),
  }) {
    if (changeFilter != null) {
      return changeFilter(this);
    }
    return orElse();
  }
}

abstract class _ChangeFilter implements FeedEvent {
  const factory _ChangeFilter(final FeedFilter filter) = _$ChangeFilterImpl;

  FeedFilter get filter;
  @JsonKey(ignore: true)
  _$$ChangeFilterImplCopyWith<_$ChangeFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedState {
  bool get isLastPage => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  FeedFilter get filter => throw _privateConstructorUsedError;
  List<FeedModel> get feedReel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res, FeedState>;
  @useResult
  $Res call(
      {bool isLastPage,
      int offset,
      bool loading,
      FeedFilter filter,
      List<FeedModel> feedReel});
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res, $Val extends FeedState>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLastPage = null,
    Object? offset = null,
    Object? loading = null,
    Object? filter = null,
    Object? feedReel = null,
  }) {
    return _then(_value.copyWith(
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FeedFilter,
      feedReel: null == feedReel
          ? _value.feedReel
          : feedReel // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedStateImplCopyWith<$Res>
    implements $FeedStateCopyWith<$Res> {
  factory _$$FeedStateImplCopyWith(
          _$FeedStateImpl value, $Res Function(_$FeedStateImpl) then) =
      __$$FeedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLastPage,
      int offset,
      bool loading,
      FeedFilter filter,
      List<FeedModel> feedReel});
}

/// @nodoc
class __$$FeedStateImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateImpl>
    implements _$$FeedStateImplCopyWith<$Res> {
  __$$FeedStateImplCopyWithImpl(
      _$FeedStateImpl _value, $Res Function(_$FeedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLastPage = null,
    Object? offset = null,
    Object? loading = null,
    Object? filter = null,
    Object? feedReel = null,
  }) {
    return _then(_$FeedStateImpl(
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FeedFilter,
      feedReel: null == feedReel
          ? _value._feedReel
          : feedReel // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
    ));
  }
}

/// @nodoc

class _$FeedStateImpl implements _FeedState {
  const _$FeedStateImpl(
      {this.isLastPage = false,
      this.offset = 0,
      this.loading = false,
      this.filter = FeedFilter.viewAll,
      final List<FeedModel> feedReel = const []})
      : _feedReel = feedReel;

  @override
  @JsonKey()
  final bool isLastPage;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final FeedFilter filter;
  final List<FeedModel> _feedReel;
  @override
  @JsonKey()
  List<FeedModel> get feedReel {
    if (_feedReel is EqualUnmodifiableListView) return _feedReel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedReel);
  }

  @override
  String toString() {
    return 'FeedState(isLastPage: $isLastPage, offset: $offset, loading: $loading, filter: $filter, feedReel: $feedReel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedStateImpl &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality().equals(other._feedReel, _feedReel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLastPage, offset, loading,
      filter, const DeepCollectionEquality().hash(_feedReel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateImplCopyWith<_$FeedStateImpl> get copyWith =>
      __$$FeedStateImplCopyWithImpl<_$FeedStateImpl>(this, _$identity);
}

abstract class _FeedState implements FeedState {
  const factory _FeedState(
      {final bool isLastPage,
      final int offset,
      final bool loading,
      final FeedFilter filter,
      final List<FeedModel> feedReel}) = _$FeedStateImpl;

  @override
  bool get isLastPage;
  @override
  int get offset;
  @override
  bool get loading;
  @override
  FeedFilter get filter;
  @override
  List<FeedModel> get feedReel;
  @override
  @JsonKey(ignore: true)
  _$$FeedStateImplCopyWith<_$FeedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
