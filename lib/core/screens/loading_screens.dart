import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:support_pkg/core/screens/screens.dart';
import 'package:support_pkg/generated/l10n.dart';


class LoadingScreens extends Screens {
  LoadingScreens(GetxController controller) : super(controller);

  @override
  Widget getUI(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: LoadingIndicator(
                indicatorType: Indicator.ballPulseSync,

                /// Required, The loading type of the widget
                colors: [
                  Theme.of(context).colorScheme.primary.withOpacity(0.7)
                ],

                /// Optional, The color collections
                strokeWidth: 2,
              ),
            ),
            Text('${S.current.loading}...'),
          ],
        ),
      ),
    );
  }
}
