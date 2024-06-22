import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:support_pkg/core/base/usecase/usecase.dart';
import 'package:support_pkg/core/entities/failures.dart';
import 'package:support_pkg/modules/module_auth/data/request/login_request.dart';
import 'package:support_pkg/modules/module_auth/data/response/login_response.dart';
import 'package:support_pkg/modules/module_auth/domain/repository/support_auth_repository.dart';

@lazySingleton
class SupportLoginUseCase
    extends UseCase<LoginResponse, LoginRequest> {
  final SupportAuthRepository repository;

  SupportLoginUseCase({required this.repository});

  @override
  Future<Either<Failure, LoginResponse>> call(params) async{
    return repository.loginSupport(params);
  }
}