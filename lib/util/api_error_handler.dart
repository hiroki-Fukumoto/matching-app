import 'package:dio/dio.dart';

class ApiError {
  int status = 0;
  String errorType = '';
  List<String> messages = [];
}

class DioExceptions implements Exception {
  ApiError err = ApiError();
  ApiError getError() => err;

  DioExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        err.status = 500;
        err.errorType = 'cancelled';
        err.messages = ['Request to API server was cancelled'];
        break;
      case DioErrorType.connectTimeout:
        err.status = 500;
        err.errorType = 'timeout';
        err.messages = ['Connection timeout with API server'];
        break;
      case DioErrorType.receiveTimeout:
        err.status = 500;
        err.errorType = 'timeout';
        err.messages = ['Receive timeout in connection with API server'];
        break;
      case DioErrorType.response:
        var e = dioError.response!.data;
        err.status = e['status'];
        err.errorType = e['error'];
        err.messages = e['error_detail'].cast<String>() as List<String>;
        break;
      case DioErrorType.sendTimeout:
        err.status = 500;
        err.errorType = 'timeout';
        err.messages = ['Send timeout in connection with API server'];
        break;
      default:
        err.status = 500;
        err.errorType = 'internal server error';
        err.messages = ['internal server error'];
        break;
    }
  }
}
