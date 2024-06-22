import 'package:get/get.dart';
import 'package:support_pkg/modules/module_auth/presentation/controller/login/logic/login_controller_logic.dart';

class SupportLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SupportLoginLogic());
  }
}
