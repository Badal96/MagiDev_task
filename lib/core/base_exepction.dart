class BaseException implements Exception {
  final String? message;
  final dynamic error;

  const BaseException([this.message, this.error]);

  // BaseException.fromErrorCode(String code)
  //     : error = ErrorMessage.errCodeToMessage(code);

  @override
  String toString() {
    if (message != null) return message!;
    if (error == null) return 'Exception';
    return '$error';
  }
}
