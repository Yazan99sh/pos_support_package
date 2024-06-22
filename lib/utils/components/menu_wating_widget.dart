import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:support_pkg/generated/assets.dart';

class MenuWaitingWidget extends StatelessWidget {
  const MenuWaitingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(Assets.svgLogo),
      ),
    );
  }
}
