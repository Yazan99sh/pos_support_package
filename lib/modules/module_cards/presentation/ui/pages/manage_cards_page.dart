import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:support_pkg/modules/module_cards/presentation/controller/logic/manage_cards_logic.dart';
import 'package:support_pkg/modules/module_cards/presentation/ui/pages/businesses_drop_down_search_bar.dart';
class ManageCardsPage extends GetView<ManageCardsLogic> {
  const ManageCardsPage();

  @override
  Widget build(BuildContext context) {
   return Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [

       BusinessesDropDownSearchBar(controller).getUI(context),

       controller.obx((state) {
         return state?.screen.getUI(context) ?? const SizedBox();
       })
     ],
   );
  }
}
