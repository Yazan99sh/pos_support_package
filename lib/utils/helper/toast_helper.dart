
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
 import 'package:support_pkg/generated/l10n.dart';

class ToastHelper {
  static showError({String? error}) {
    if (Platform.isWindows) {
      return Get.snackbar('',error ?? '',backgroundColor: Colors.red,colorText: Colors.white);
    }
    return Fluttertoast.showToast(
      msg: error ?? S.current.errorHappened,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static showSuccess({String? successMessage}) {
    if (Platform.isWindows) {
      return Get.snackbar('',successMessage ?? '',backgroundColor: Colors.green,colorText: Colors.white);
    }
    return Fluttertoast.showToast(
      msg: successMessage ?? S.current.success,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
    );
  }
}
