


import 'package:get/get.dart';
import 'package:support_pkg/modules/module_auth/core/authorization_routes.dart';
import 'package:support_pkg/modules/module_auth/presentation/controller/login/bindings/login_binding.dart';
import 'package:support_pkg/modules/module_auth/presentation/ui/pages/login_page.dart';
import 'package:support_pkg/modules/module_cards/core/cards_routes.dart';
import 'package:support_pkg/modules/module_cards/presentation/controller/binding/manage_cards_binding.dart';
import 'package:support_pkg/modules/module_cards/presentation/ui/pages/manage_cards_page.dart';
import 'package:support_pkg/modules/module_menu/controller/binding/menu_binding.dart';
import 'package:support_pkg/modules/module_menu/menu_routes.dart';
import 'package:support_pkg/modules/module_menu/ui/pages/menu_page.dart';

appSupportRoutes() => [

      GetPage(
        name: AuthorizationSupportRoutes.loginSupportScreen,
        page: () => const SupportLoginPage(),
        binding: SupportLoginBinding(),
      ),
      GetPage(
        name: MenuSupportRoutes.menuSupportRoute,
        page: () => SupportMenuPage(),
        binding: SupportMenuBinding(),
        bindings: [
          ManageCardsBinding(),
        ]
      ),
      GetPage(
        name: CardRoutes.getBusinesses,
        page: () => const ManageCardsPage(),
        binding: ManageCardsBinding(),
      ),
    ];
