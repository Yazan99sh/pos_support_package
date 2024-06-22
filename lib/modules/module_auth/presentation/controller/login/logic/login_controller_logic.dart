import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:support_pkg/injection.dart';
import 'package:support_pkg/modules/module_auth/data/presistance/support_auth_prefs_helper.dart';
import 'package:support_pkg/modules/module_auth/data/request/login_request.dart';
import 'package:support_pkg/modules/module_auth/domain/usecases/login_usecase.dart';
import 'package:support_pkg/modules/module_auth/presentation/controller/login/state/login_controller_state.dart';
import 'package:support_pkg/modules/module_auth/presentation/ui/screens/login_states/login_state_init.dart';
import 'package:support_pkg/modules/module_menu/menu_routes.dart';
import 'package:support_pkg/utils/extensions.dart';
import 'package:support_pkg/utils/helper/toast_helper.dart';


@lazySingleton
class SupportLoginLogic extends GetxController with StateMixin<LoginControllerState> {
  final passwordTextEditingController = TextEditingController();
  final emailTextEditingController = TextEditingController();

  RxBool loadingLoginButton = false.obs;

  final SupportAuthPrefsHelper _prefsHelper = ii<SupportAuthPrefsHelper>();

  @override
  void onInit() {
    change(
        InitLoginControllerState(
          screen: LoginStateInit(this),
        ),
        status: RxStatus.success());

    super.onInit();
  }



  @override
  void onReady() {
    //
    super.onReady();
  }

  @override
  void onClose() {
    //

    super.onClose();
  }


  void loginSupport() async {
    loadingLoginButton.value = true;
    var email = emailTextEditingController.text;
    var pass = passwordTextEditingController.text;

    final result = await ii<SupportLoginUseCase>().call(LoginRequest(
        email: email,password: pass));

    result.fold((l) => ToastHelper.showError(error: l.getMessage), (response) async {
      _prefsHelper.setToken(response!.accessToken);
      _prefsHelper.setPassword(pass);
      _prefsHelper.setEmail(email);
      _prefsHelper.setUserName(response.username);

      Get.offAllNamed(MenuSupportRoutes.menuSupportRoute);
    });
  }


  logout(){

  }
}

