import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:openapi/openapi.dart';

class OpenApiFactory {
  OpenApiFactory();

  Openapi build() {
    // final baseUrl = dotenv.env['API_BASE_URL'] ?? "http://localhost:8080";
    const baseUrl = "http://localhost:8080";
    final BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 5000,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );

    return Openapi(
      basePathOverride: baseUrl,
      interceptors: [
        if (kDebugMode) LogInterceptor(requestBody: true, responseBody: true),
      ],
    );
  }
}
