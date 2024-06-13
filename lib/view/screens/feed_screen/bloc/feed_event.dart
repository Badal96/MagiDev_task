part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.getFeed({
    required int offset,
    required int count,
  }) = _GetFeed;
  const factory FeedEvent.changeFilter(
    FeedFilter filter,
  ) = _ChangeFilter;
}
