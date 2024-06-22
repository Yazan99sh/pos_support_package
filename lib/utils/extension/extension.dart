import 'dart:math';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double dynamicHeight(double value) => MediaQuery.of(this).size.height * value;

  double dynamicWidth(double value) => MediaQuery.of(this).size.width * value;

  ThemeData get colorScheme => Theme.of(this);

  bool get isThisNarrowTablet => MediaQuery.of(this).size.width <= 800;
}

extension EmptyWidget on BuildContext {
  Widget get sizedBoxHeightMicro => SizedBox(
        height: dynamicHeight(0.005),
      );

  Widget get sizedBoxHeightUltraSmall => SizedBox(
        height: dynamicHeight(0.01),
      );

  Widget get sizedBoxHeightExtraSmall => SizedBox(
        height: dynamicHeight(0.02),
      );

  Widget get sizedBoxHeightSmall => SizedBox(
        height: dynamicHeight(0.04),
      );

  Widget get sizedBoxHeightDefault => SizedBox(
        height: dynamicHeight(0.06),
      );

  Widget get sizedBoxHeightLarge => SizedBox(
        height: dynamicHeight(0.08),
      );

  Widget get sizedBoxHeightExtraLarge => SizedBox(
        height: dynamicHeight(0.1),
      );

  Widget get sizedBoxWidthExtraSmall => SizedBox(
        width: dynamicWidth(0.02),
      );

  Widget get sizedBoxWidthMicro => SizedBox(
        width: dynamicWidth(0.01),
      );

  Widget get sizedBoxWidthSmall => SizedBox(
        width: dynamicWidth(0.04),
      );

  Widget get sizedBoxWidthDefault => SizedBox(
        width: dynamicWidth(0.06),
      );

  Widget get sizedBoxWidthLarge => SizedBox(
        width: dynamicWidth(0.08),
      );

  Widget get sizedBoxWidthExtraLarge => SizedBox(
        width: dynamicWidth(0.1),
      );
}

extension ShowSnackBar on BuildContext {
  showSimpleSnackBar([String? msg]) =>
      ScaffoldMessenger.of(this).showSnackBar(SnackBar(
          content: Text(msg ??= 'Somthing is wrong, try again',
              style: Theme.of(this)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white))));
}

extension RandomListItem<T> on List<T> {
  T getRandomItem() => this[Random().nextInt(length)];
}



extension NullableObjects on Object? {
  bool get isItNull => this == null;
}

extension StringUtils on String? {
  bool get isContainArabicLatter {
    if (this == null) return false;
    for (int i = 0; i < this!.length; i++) {
      int charCode = this!.codeUnitAt(i);
      // Check if the character is within the Arabic Unicode range
      if (charCode >= 0x0600 && charCode <= 0x06FF) {
        return true;
      }
    }
    return false;
  }
}


