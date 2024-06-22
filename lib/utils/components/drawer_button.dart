import 'package:flutter/material.dart';
import 'package:support_pkg/utils/extensions.dart';
import 'package:support_pkg/utils/theme_consts.dart';

class CustomDrawerButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String route;
  final Function(String) onTap;
  final bool active;
  final bool subButton;

  const CustomDrawerButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.route,
    required this.active,
    this.subButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(ThemeConstants.circularRounded),
        onTap: () => onTap(route),
        child: Container(
          decoration: BoxDecoration(
            color: active
                ? Theme.of(context).colorScheme.background
                : Colors.transparent,
            borderRadius: BorderRadius.circular(ThemeConstants.circularRounded),
          ),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(ThemeConstants.circularRounded),
            ),
            leading: Icon(
              icon,
              color: subButton ? Theme.of(context).disabledColor : Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              title,
              style: TextStyle(
                color: HexColor.fromHex('#666666'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
