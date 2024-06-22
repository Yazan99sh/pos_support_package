import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:support_pkg/utils/components/app_ink_well_widget.dart';

class RoundedBtnWidget extends StatelessWidget {
  final void Function() onTap;
  final Widget? btnIcon;
  final String btnText;
  final double? width;
  final double? height;
  final TextStyle? btnTextStyle;
  final BoxBorder? boxBorder;
  final Color bgColor;
  final Color btnTextColor;
  final EdgeInsetsGeometry btnMargin;
  final Duration? animDuration;
  final EdgeInsetsGeometry btnPadding;
  final double borderRadios;
  final Color? hoverColor;
  final bool btnLoading;

  /// If True, width of the button will be adjusted according to button's children width.
  /// If False, width of the button will be [width] or as large as possible
  final bool wrapWidth;

  const RoundedBtnWidget({
    Key? key,
    required this.onTap,
    this.btnIcon,
    required this.btnText,
    this.width,
    this.borderRadios = 8.0,
    this.height,
    this.wrapWidth = false,
    this.hoverColor,
    this.btnTextStyle,
    this.btnTextColor = Colors.white,
    this.boxBorder,
    this.bgColor = const Color(0xFFF08234),
    this.btnMargin = const EdgeInsets.symmetric(vertical: 4.0, horizontal: 5.0),
    this.animDuration,
    this.btnPadding = const EdgeInsets.symmetric(horizontal: 5.0),
    this.btnLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppInkWell(
      borderRadius: BorderRadius.circular(borderRadios),
      onTap: () => onTap(),
      child: AnimatedContainer(
        duration: animDuration ?? const Duration(milliseconds: 800),
        height: height,
        width: (wrapWidth) ? null : width,
        constraints: BoxConstraints(
          minWidth: 20,
          maxWidth: width ?? 700,
        ),
        padding: btnPadding,
        margin: btnMargin,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(borderRadios),
            border: boxBorder),
        child: Visibility(
          visible: !btnLoading,
          replacement: SizedBox(
            height: 18,
            child: LoadingIndicator(
               indicatorType: Indicator.ballPulse,
              backgroundColor:Colors.transparent,
              colors:   [btnTextColor],
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btnIcon ?? Container(),
              Visibility(
                visible: (btnIcon != null && btnText.isNotEmpty),
                child: const SizedBox(
                  width: 5.0,
                ),
              ),
              Text(
                btnText,
                style: (btnTextStyle ?? context.textTheme.labelLarge)
                    ?.copyWith(color: btnTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
