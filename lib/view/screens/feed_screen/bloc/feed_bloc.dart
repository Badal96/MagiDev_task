import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_devs_task/config/enum.dart';
import 'package:magic_devs_task/data/models/feed_model/feed_model.dart';
import 'package:magic_devs_task/data/remote_repositories/feed_repository.dart';
import 'package:magic_devs_task/resources/response_state.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final FeedRepository feedRepository;
  FeedBloc({required this.feedRepository}) : super(const FeedState()) {
    on<_GetFeed>((event, emit) async {
      emit(state.copyWith(loading: true));
      final feeds = await feedRepository.getFeedByCount(
          offset: event.offset, count: event.count);

      if (feeds is DataSuccess) {
        if (feeds.data!.isEmpty) {
          emit(state.copyWith(isLastPage: true));
        } else {
          emit(state.copyWith(
              feedReel: [...state.feedReel, ...feeds.data!], loading: false));
        }
      }
      if (feeds is DataFailed) {
        print(feeds.exception);
        emit(state.copyWith(loading: false));
      }
    });

    on<_ChangeFilter>((event, emit) {
      emit(state.copyWith(filter: event.filter));
    });
  }
}
