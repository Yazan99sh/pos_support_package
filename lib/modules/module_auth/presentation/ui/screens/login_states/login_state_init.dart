// ignore_for_file: use_build_context_synchronously
import 'package:curved_progress_bar/curved_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:support_pkg/core/screens/screens.dart';
import 'package:support_pkg/generated/l10n.dart';
import 'package:support_pkg/modules/module_auth/presentation/controller/login/logic/login_controller_logic.dart';
import 'package:support_pkg/modules/module_auth/presentation/ui/widget/custom_field.dart';
import 'package:support_pkg/utils/components/custom_app_bar.dart';
import 'package:support_pkg/utils/components/fixed_container.dart';
import 'package:support_pkg/utils/extension/extension.dart';
import 'package:support_pkg/utils/helper/toast_helper.dart';
import 'package:support_pkg/utils/text_style/text_style.dart';


class LoginStateInit extends Screens {
  final SupportLoginLogic controller;

  LoginStateInit(this.controller, { String? error})
      : super(controller) {
    if (error != null) {
      ToastHelper.showError(error: error);
    }
  }

  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();

  @override
  Widget getUI(BuildContext context) {
    return Center(
      child: FixedContainer(
        child: Scaffold(
          appBar: CustomSmartEPayAppBar.appBar(context,
              title: S.current.login,
              canGoBack: false,

          ),
          body: Form(
            key: _loginKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: ListView(
                    children: [

                      // logo image
                      Visibility(
                        visible: MediaQuery.of(context).viewInsets.bottom == 0,
                        child: Padding(
                          padding:
                          EdgeInsets.only(top: context.dynamicHeight(0.035)),
                          // child: SvgPicture.asset(
                          //   Assets.svgLogo,
                          //   // width: context.dynamicWidth(0.2),
                          //   height: context.dynamicHeight(0.2),
                          // ),
                        ),
                      ),

                      // login greeting
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(start: 14.0),
                          child: Text(
                            S.current.loginGreeting,
                            style: StyleText.yourNumberPartnerStyle
                                .copyWith(fontSize: 17),
                          ),
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.only(
                            left: 16.0,
                            right: 16,
                            top: context.dynamicHeight(0.05)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 4.0, bottom: 8),
                              child: Text(
                                S.current.email,
                                style: StyleText.initialSetupStyle.copyWith(
                                    fontWeight: FontWeight.normal, fontSize: 16),
                              ),
                            ),
                            CustomLoginFormField(
                              controller:
                              controller.emailTextEditingController,
                              hintText: S.current.email,
                              password: false,
                              last: false,
                              numbers: false,
                            ),

                            const SizedBox(
                              height: 16,
                            ),

                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 4.0, bottom: 8),
                              child: Text(
                                S.current.password,
                                style: StyleText.initialSetupStyle.copyWith(
                                    fontWeight: FontWeight.normal, fontSize: 16),
                              ),
                            ),
                            CustomLoginFormField(
                              controller:
                                  controller.passwordTextEditingController,
                              hintText: S.current.enterYourPassword,
                              password: true,
                              last: true,
                              numbers: false,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: ElevatedButton(
                                  onPressed: () => submit(context),
                                  child: Obx(() {
                                    return Visibility(
                                      replacement: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CurvedCircularProgressIndicator(
                                          valueColor: AlwaysStoppedAnimation(
                                              Theme.of(context)
                                                  .scaffoldBackgroundColor),
                                        ),
                                      ),
                                      visible:
                                          !controller.loadingLoginButton.value,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(S.current.submit),
                                      ),
                                    );
                                  })),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void submit(BuildContext context) {
    if (_loginKey.currentState?.validate() == true) {
      controller.loginSupport();
    } else {
      ToastHelper.showError(error: S.current.pleaseCompleteField);
    }
    if (FocusScope.of(context).canRequestFocus) {
      FocusScope.of(context).unfocus();
    }
  }
}
