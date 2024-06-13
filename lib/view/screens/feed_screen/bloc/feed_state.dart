part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState({
    @Default(false) bool isLastPage,
    @Default(0) int offset,
    @Default(false) bool loading,
    @Default(FeedFilter.viewAll) FeedFilter filter,
    @Default([]) List<FeedModel> feedReel,
  }) = _FeedState;
}
