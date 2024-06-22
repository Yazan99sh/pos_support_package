import 'dart:ui' as ui;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SupportConfig {
  //#region app languages
  static const langAr = 'ar';
  static const langEN = 'en';
  static const langDE = 'de';
//#endregion

  final int envIndex;
  final ui.Locale locale;
  GlobalKey<NavigatorState> navigatorKey;

  ThemeData? theme;

  Dio dio;

  SupportConfig({
    required this.envIndex,
    required this.dio,
    required this.locale,
    required this.navigatorKey,
    this.theme,
  });

  String get selectedLanguageHeader {
    switch (locale.languageCode) {
      case langEN:
        return 'en-GB';
      case langAr:
        return 'ar-SY';
      case langDE:
        return 'de-DE';
      default:
        return 'en-GB';
    }
  }
}
