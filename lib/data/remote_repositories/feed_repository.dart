import 'package:dio/dio.dart';
import 'package:magic_devs_task/core/base_exepction.dart';
import 'package:magic_devs_task/data/models/feed_model/feed_model.dart';
import 'package:magic_devs_task/resources/base_repository.dart';
import 'package:magic_devs_task/resources/response_state.dart';

class FeedRepository extends BaseRepository {
  final Dio dioClient;

  FeedRepository({required this.dioClient});

  Future<DataState<List<FeedModel>>> getFeedByCount(
      {required int count, required int offset}) async {
    try {
      final res = <FeedModel>[];
      final request =
          await dioClient.post('/user/posts', queryParameters: <String, String>{
        'count': '$count',
        'from': '$offset',
      });
      List<dynamic> data = request.data['result']['data'];

      for (var i in data) {
        res.add(FeedModel.fromJson(i));
      }
      return DataSuccess(res);
    } on DioException catch (e) {
      print(parseError(e));
      return DataFailed(BaseException(parseError(e)));
    }
  }
}
