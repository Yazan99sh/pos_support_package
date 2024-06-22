import 'package:get/get.dart';
import 'package:support_pkg/modules/module_menu/controller/logic/menu_logic.dart';

class SupportMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SupportMenuLogic());
  }
}
