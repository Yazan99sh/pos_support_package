import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:support_pkg/core/base/repository/base_repository_impl.dart';
import 'package:support_pkg/core/entities/failures.dart';
import 'package:support_pkg/modules/module_auth/data/datasource/remote/support_auth_remote_datasource.dart';
import 'package:support_pkg/modules/module_auth/data/request/login_request.dart';
import 'package:support_pkg/modules/module_auth/data/response/login_response.dart';
import 'package:support_pkg/modules/module_auth/domain/repository/support_auth_repository.dart';

@LazySingleton(as: SupportAuthRepository)
class SupportAuthRepositoryImp extends BaseRepositoryImpl
    implements SupportAuthRepository {
  final SupportAuthRemoteDataSource remote;
  final Logger logger;
  SupportAuthRepositoryImp(this.remote,  this.logger,) : super(logger);


  @override
  Future<Either<Failure, LoginResponse>> loginSupport(LoginRequest requestLogin) {
    return request(() async {
      final result = await remote.loginSupport(requestLogin);
      return Right(result);
    });
  }
}