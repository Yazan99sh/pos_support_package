import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:support_pkg/generated/assets.dart';
import 'package:support_pkg/generated/l10n.dart';
import 'package:support_pkg/injection.dart';
import 'package:support_pkg/modules/module_auth/data/presistance/support_auth_prefs_helper.dart';
import 'package:support_pkg/modules/module_cards/core/cards_routes.dart';
import 'package:support_pkg/utils/components/drawer_button.dart';
import 'package:support_pkg/utils/text_style/text_style.dart';

class SupportMenuDrawer extends StatelessWidget {
  final Function(String) onTap;
  final String? selectedRoute;

  const SupportMenuDrawer({Key? key, required this.onTap, required this.selectedRoute})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              const SizedBox(
                height: 16,
              ),
              // drawer header
              Column(
                children: [
                  SizedBox(
                    width: 75,
                    height: 75,
                    child: SvgPicture.asset(Assets.svgLogo),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        ii<SupportAuthPrefsHelper>().getUserName() ?? S.current.unknown,
                        style: StyleText.appBarHeaderStyle
                            .copyWith(fontSize: 18),
                      )),

                ],
              ),
              const SizedBox(
                height: 16,
              ),

              CustomDrawerButton(
                title: S.current.manageNfcCards,
                icon: Icons.nfc_rounded,
                active: CardRoutes.getBusinesses == selectedRoute,
                onTap: (route) => onTap(route),
                route: CardRoutes.getBusinesses,
              ),
              CustomDrawerButton(
                title: S.current.logout,
                icon: Icons.logout,
                active: false,
                onTap: (route) {
                  // ii<SupportAuthPrefsHelper>().cleanCredentialData().whenComplete(() {
                  //   Get.offAllNamed(SplashRoutes.splashScreen);
                  // });
                },
                route: '',
              ),
            ],
          ),
        );
  }
}
