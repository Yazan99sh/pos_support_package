import 'package:dartz/dartz.dart';
import 'package:support_pkg/core/base/repository/base_repository.dart';
import 'package:support_pkg/core/entities/failures.dart';
import 'package:support_pkg/modules/module_auth/data/request/login_request.dart';
import 'package:support_pkg/modules/module_auth/data/response/login_response.dart';

abstract class SupportAuthRepository extends BaseRepository {

  Future<Either<Failure, LoginResponse>> loginSupport(LoginRequest request);


}

