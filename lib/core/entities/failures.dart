import 'package:support_pkg/core/enum/server_error_code.dart';

abstract class Failure {}

class ServerFailure implements Failure {
  final ServerErrorCode errorCode;
  final String message;

  ServerFailure({required this.errorCode, this.message = ''});
}


class AppAccessDeniedFailure implements Failure {}
