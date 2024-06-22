import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:support_pkg/generated/l10n.dart';
import 'package:support_pkg/modules/module_cards/core/cards_routes.dart';
import 'package:support_pkg/modules/module_cards/presentation/ui/pages/manage_cards_page.dart';
import 'package:support_pkg/modules/module_menu/controller/logic/menu_logic.dart';
import 'package:support_pkg/utils/components/custom_app_bar.dart';
import 'package:support_pkg/utils/components/menu_drawer.dart';
import 'package:support_pkg/utils/components/menu_wating_widget.dart';
import 'package:support_pkg/utils/extension/extension.dart';

class SupportMenuPage extends GetView<SupportMenuLogic> {
  @override
  Widget build(BuildContext context) {
    return controller.obx((state) {
      if (context.isPhone || context.isThisNarrowTablet) {
        return SupportMenuDrawer(
          onTap: (route) {
            if (context.isPhone || context.isThisNarrowTablet) {
              Get.toNamed(route);
            } else {
              /// do something more for that .
              controller.currentRoute = route;
              controller.update();
            }
          },
          selectedRoute: Get.currentRoute,
        );
      }
      return Scaffold(
        appBar: CustomSmartEPayAppBar.appBar(
          context,
          title: S.current.menu,
          canGoBack: false
        ),
        body: Row(
          children: [
            SupportMenuDrawer(
              onTap: (route) {
                if (context.isPhone) {
                  Get.toNamed(route);
                } else {
                  /// do something more for that .
                  controller.currentRoute = route;
                  controller.update();
                }
              },
              selectedRoute: controller.currentRoute,
            ),
            Expanded(
              child: Builder(
                  builder: (context) => controller.currentRoute != null
                      ? SizedBox(
                          child: getPages(controller.currentRoute ?? ''),
                        )
                      : const MenuWaitingWidget()),
            ),
          ],
        ),
      );
    });
  }

  Widget getPages(String route) {
    switch (route) {
      case CardRoutes.getBusinesses:
        return const ManageCardsPage();
      default:
        return const SizedBox();
    }
  }
}
