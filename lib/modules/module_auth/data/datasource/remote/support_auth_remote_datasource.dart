import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:support_pkg/core/configurations/configuration.dart';
import 'package:support_pkg/modules/module_auth/core/url/auth_url.dart';
import 'package:support_pkg/modules/module_auth/data/request/login_request.dart';
import 'package:support_pkg/modules/module_auth/data/response/login_response.dart';
part 'support_auth_remote_datasource.g.dart';

abstract class SupportAuthRemoteDataSource {
  Future<LoginResponse> loginSupport(LoginRequest request);

}

@LazySingleton(as: SupportAuthRemoteDataSource)
@RestApi(baseUrl: '')
abstract class SupportAuthRemoteDataSourceImpl implements SupportAuthRemoteDataSource {
  @factoryMethod
  factory SupportAuthRemoteDataSourceImpl(Dio dio, Configuration configuration) {
    return _SupportAuthRemoteDataSourceImpl(dio, baseUrl: configuration.getSupportBaseUrl);
  }


  @override
  @POST(AuthUrl.loginApi)
  Future<LoginResponse> loginSupport( @Body() LoginRequest request);

}