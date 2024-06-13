import 'package:dio/dio.dart';

abstract class BaseRepository {
  String parseError(DioException err) {
    final response = err.response;
    var message = err.message;
    if (response?.data == null) return message ?? '';

    if (response?.statusCode == 400) {
      message = response!.data['message'] ?? err.message;
    } else if (response?.statusCode == 422) {
      final error = response!.data['errors'];
      final errorMessage = response.data['message'];
      if (errorMessage != null) {
        message = errorMessage;
      } else if (error is List) {
        message = error.first;
      } else if (error is Map) {
        if (error.values is List) {
          message = error.values.first.first;
        } else {
          if (error.values.first is List) {
            message = error.values.first
                .toString()
                .replaceAll('[', '')
                .replaceAll(']', '');
          } else {
            message = error.keys.first + ' ' + error.values.first.toString();
          }
        }
      } else if (error is String) {
        message = error;
      }
    } else {
      return response!.data['message'] ?? message;
    }
    return message ?? '';
  }
}
