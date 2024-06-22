import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:support_pkg/core/module_theme/service/theme_service/theme_service.dart';
import 'package:support_pkg/generated/assets.dart';
import 'package:support_pkg/utils/extension/extension.dart';


class GeneralAlertDialog extends StatelessWidget {
  final GlobalKey<FormState>? formKey;
  final String title;
  final Widget child;
  final double height;
  final double? width;
  const GeneralAlertDialog(
      {super.key, this.formKey, required this.title, required this.child ,
        required this.height,
        this.width,

      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Form(
        key: formKey,
        child: Center(
          child: SizedBox(
            width: width ?? 350,
            height: height,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// header appbar .
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// this is how geeks do balance hahahaah.
                      const Align(
                        alignment: Alignment.topRight,
                        child: Opacity(
                          opacity: 0,
                          child: IconButton(
                              onPressed: null, icon: Icon(Icons.circle)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 8),
                            child: Text(
                              title,
                              style: context.textTheme.titleMedium?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () => Get.back(),
                            icon: SvgPicture.asset(Assets.iconsColoredCloseIcon)),
                      ),
                    ],
                  ),
                  context.sizedBoxHeightSmall,
                  child
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
