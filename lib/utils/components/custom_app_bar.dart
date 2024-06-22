import 'package:flutter/material.dart';
import 'package:support_pkg/core/module_theme/pressistance/theme_preferences_helper.dart';
import 'package:support_pkg/generated/l10n.dart';
import 'package:support_pkg/injection.dart';
import 'package:support_pkg/utils/text_style/text_style.dart';
import 'package:support_pkg/utils/theme_consts.dart';

class CustomSmartEPayAppBar {
  static PreferredSizeWidget appBar(
    BuildContext context, {
    required title,
    GestureTapCallback? onTap,
    Color? colorIcon,
    Color? buttonBackground,
    IconData? icon,
    Widget? widget,
    bool canGoBack = true,
    List<Widget>? actions,
    String? leadingTitle,
    bool centerTitle = false,
  }) {
    bool isDark = ii<ThemePreferencesHelper>().isDarkMode();
    return AppBar(
      centerTitle: centerTitle,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(
        title,
        style: StyleText.appBarHeaderStyle1.copyWith(fontSize: 16),
      ),
      leadingWidth: canGoBack == false ? 0 : 100,
      leading: canGoBack
          ? Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: widget ??
                    InkWell(
                      customBorder: const CircleBorder(),
                      onTap: onTap ?? () => Navigator.of(context).pop(),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                                ThemeConstants.circularRounded)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Icon(icon ?? Icons.arrow_back_ios_new_sharp,
                                  color: colorIcon ??
                                      (isDark ? null : Colors.white)),
                              Text(
                                leadingTitle ?? S.current.back,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
              ),
            )
          : const SizedBox(),
      elevation: 0,
      actions: actions,
    );
  }

  static Widget actionIcon(context,
      {required Function() onTap,
      Function()? doubleTap,
      Color? buttonBackground,
      required IconData icon,
      String? message,
      Color? colorIcon}) {
    bool isDark = ii<ThemePreferencesHelper>().isDarkMode();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Tooltip(
        message: message ?? '',
        child: InkWell(
          onDoubleTap: doubleTap,
          customBorder: const CircleBorder(),
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: isDark
                        ? Theme.of(context)
                            .colorScheme
                            .background
                            .withOpacity(0.5)
                        : Theme.of(context).colorScheme.background,
                    spreadRadius: 1.5,
                    blurRadius: 6,
                    offset: const Offset(-0.2, 0))
              ],
              color:
                  buttonBackground ?? Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon,
                  color: colorIcon ??
                      (isDark ? null : Theme.of(context).colorScheme.primary)),
            ),
          ),
        ),
      ),
    );
  }
}
