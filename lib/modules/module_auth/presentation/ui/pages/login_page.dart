import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:support_pkg/modules/module_auth/presentation/controller/login/logic/login_controller_logic.dart';

class SupportLoginPage extends GetView<SupportLoginLogic> {
  const SupportLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx((state) {
        return state?.screen.getUI(context) ?? const SizedBox();
      }),
    );
  }
}
