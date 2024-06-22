import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:sentry_dio/sentry_dio.dart';

import 'package:support_pkg/core/configurations/configuration.dart';
import 'package:support_pkg/core/introcepters/token_support_introcepters.dart';
import 'package:support_pkg/injection.dart';

@module
abstract class InjectableSupportModule {
  @injectable
  Dio get dioInstance {
    final dio = Dio(
      BaseOptions(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          receiveTimeout: const Duration(minutes: 2),
          validateStatus: (statusCode) {
            if (statusCode != null) {
              if (200 <= statusCode && statusCode < 300) {
                return true;
              } else {
                return false;
              }
            } else {
              return false;
            }
          }),
    );
    dio.options.baseUrl = ii<Configuration>().getSupportBaseUrl;
    dio.interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
        logPrint: (obj) {
          debugPrint(obj.toString());
        },
      ),
    );
    dio.interceptors.add(TokenSupportInterceptor());
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) async {
          request.sendTimeout = const Duration(seconds: 120);
          request.connectTimeout = const Duration(seconds: 120);
          request.receiveTimeout = const Duration(seconds: 120);
          return handler.next(request);
        },
      ),
    );
    dio.interceptors.add(CurlLoggerDioInterceptor());
    dio.addSentry();
    //  dio.interceptors.add(DioFirebasePerformanceInterceptor());
    return dio;
  }

  @injectable
  Logger get logger => Logger();
}
