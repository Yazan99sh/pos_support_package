import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:support_pkg/core/screens/screens.dart';
import 'package:support_pkg/generated/l10n.dart';
import 'package:support_pkg/utils/components/custom_app_bar.dart';

class EmptyState extends Screens {
  GetxController view;
  final String emptyMessage;
  final String title;
  final bool hasAppbar;
  final VoidCallback? onPressed;
  final String? buttonLabel;
  final double? size;
  final bool canGoBack;
  EmptyState(this.view,
      {required this.emptyMessage,
      required this.title,
      this.hasAppbar = true,
      required this.onPressed,
      this.buttonLabel,
      this.canGoBack = true,
      this.size})
      : super(view);

  @override
  Widget getUI(BuildContext context) {
    return Scaffold(
      appBar: hasAppbar
          ? CustomSmartEPayAppBar.appBar(
              context,
              title: title,
              canGoBack: canGoBack,
            )
          : null,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Container(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text(
                  emptyMessage,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
            ),
            // SvgPicture.asset(
            //   ImageAsset.EMPTY_SVG,
            //   height: size ?? MediaQuery.of(context).size.height * 0.5,
            // ),
            Visibility(
              visible: onPressed != null,
              child: Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 0),
                      onPressed: onPressed,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          buttonLabel ?? S.of(context).refresh,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
