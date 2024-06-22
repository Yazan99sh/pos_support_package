import 'package:get/get.dart';
import 'package:support_pkg/modules/module_menu/controller/state/menu_controller_states.dart';


class SupportMenuLogic extends GetxController with StateMixin<MenuControllerState> {
  String? currentRoute;

  @override
  void onInit() {
    change(MenuInitState(), status: RxStatus.success());
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
}
