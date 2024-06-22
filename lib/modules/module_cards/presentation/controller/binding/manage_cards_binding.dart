import 'package:get/get.dart';
 import 'package:support_pkg/modules/module_cards/presentation/controller/logic/manage_cards_logic.dart';

class ManageCardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageCardsLogic());
  }
}
