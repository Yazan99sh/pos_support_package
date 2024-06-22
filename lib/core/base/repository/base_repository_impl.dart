import 'dart:async';
import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:support_pkg/core/base/repository/base_repository.dart';
import 'package:support_pkg/core/base/response/base_response.dart';
import 'package:support_pkg/core/entities/failures.dart';
import 'package:support_pkg/core/enum/server_error_code.dart';


class BaseRepositoryImpl implements BaseRepository {

  final Logger _logger;

  BaseRepositoryImpl(this._logger);

  @override
  Future<Either<Failure, T>> request<T>(
      FutureEitherFailureOrData<T> body,
      ) async {
    try {
      return await body();
    } catch (e) {
      if (e is DioException) {
        _logger.e(e.message, e, e.stackTrace);

        var message = e.message ?? '';
        var errorCode = ServerErrorCode.serverError;

        if (e.response != null) {
          errorCode = _getErrorCode(e.response!.statusCode ?? 500);

          try {
            final responseData = e.response!.data is String
                ? jsonDecode(e.response!.data)
                : e.response!.data;
            final baseResponse =
            BaseResponse.fromJson(responseData, (_) => null);
            message = baseResponse.message ?? '';
            return left(
              ServerFailure(
                errorCode: errorCode,
                message: message,
              ),
            );
          } catch (e) {
            return left(
              ServerFailure(
                errorCode: errorCode,
                message: message,
              ),
            );
          }
        }
      } else if (e is Error) {
        _logger.e(e.toString(), e, e.stackTrace);
      } else {
        _logger.e(e);
      }

      return left(ServerFailure(errorCode: ServerErrorCode.serverError));
    }
  }

  ServerErrorCode _getErrorCode(int statusCode) {
    switch (statusCode) {
      case 400:
        return ServerErrorCode.badrequest;
      case 401:
        return ServerErrorCode.unauthenticated;
      case 404:
        return ServerErrorCode.notFound;
      case 403:
        return ServerErrorCode.forbidden;
      default:
        return ServerErrorCode.serverError;
    }
  }
}
