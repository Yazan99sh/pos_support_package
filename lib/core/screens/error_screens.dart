import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:support_pkg/core/screens/screens.dart';
import 'package:support_pkg/generated/l10n.dart';
import 'package:support_pkg/utils/components/custom_app_bar.dart';

class ErrorScreens extends Screens {
  final String? error;
  final List<String>? errors;
  final String title;
  final bool hasAppbar;
  final VoidCallback onPressed;
  final double? size;
  GetxController screenState;
  final bool canGoBack;

  ErrorScreens(this.screenState,
      {this.error,
      this.errors,
      required this.onPressed,
      required this.title,
      this.hasAppbar = true,
      this.canGoBack = true,
      this.size})
      : super(screenState);

  @override
  Widget getUI(BuildContext context) {
    return Scaffold(
      appBar: hasAppbar
          ? CustomSmartEPayAppBar.appBar(context,
              canGoBack: Navigator.of(context).canPop(),
              title: title,
              colorIcon: Theme.of(context).colorScheme.error)
          : null,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Flex(
            direction: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Flushbar(
                  title: S.of(context).thisErrorHappened,
                  message: error,
                  messageText: errors != null
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: errors
                                  ?.map((e) => Text(
                                      '* ${e.substring(
                                        0,
                                        e.length >= 100 ? 100 : null,
                                      )}',
                                      maxLines: 2,
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          const TextStyle(color: Colors.white)))
                                  .toList() ??
                              [],
                        )
                      : null,
                  icon: const Icon(
                    Icons.info,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  backgroundColor: Theme.of(context).colorScheme.error,
                  borderRadius: BorderRadius.circular(10),
                  flushbarStyle: FlushbarStyle.FLOATING,
                ),
              ),
              Container(
                height: 24,
              ),
              // SvgPicture.asset(
              //   Assets.svgError,
              //   height: size ?? MediaQuery.of(context).size.height * 0.35,
              // ),
              Container(
                height: 32,
              ),
              Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.error,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 0),
                      onPressed: onPressed,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          S.of(context).refresh,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
