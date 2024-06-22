import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:support_pkg/injection.dart';
import 'package:support_pkg/modules/module_auth/core/authorization_routes.dart';
import 'package:support_pkg/modules/module_auth/data/presistance/support_auth_prefs_helper.dart';
import 'package:support_pkg/modules/module_auth/presentation/controller/login/logic/login_controller_logic.dart';

class TokenSupportInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options,
      RequestInterceptorHandler handler,) async {
    if (ii<SupportAuthPrefsHelper>().isSignedIn() && options.extra.keys.contains('no_token') == false) {
      final token = await ii<SupportAuthPrefsHelper>().getToken();
      options.headers['Authorization'] = token;
    }
    ii<Dio>().options.extra.clear();
    super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err,
      ErrorInterceptorHandler handler,) async {
    // If the error is 401 Unauthorized, log out the user
    if (err.response?.statusCode == 401) {
      if (Get.currentRoute != AuthorizationSupportRoutes.loginSupportScreen) {
        ii<SupportLoginLogic>().logout();
      }
    }
    super.onError(err, handler);
  }
}
