class CustomException implements Exception {
  int code;
  final dynamic message;

  CustomException(this.code, this.message);

  String toString() {
    Object message = this.message;
    if (message == null) return "CustomException";
    return "CustomException: code = $code,message = $message";
  }
}
