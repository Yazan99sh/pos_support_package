import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:support_pkg/core/module_theme/pressistance/theme_preferences_helper.dart';
import 'package:support_pkg/utils/extensions.dart';
import 'package:support_pkg/utils/theme_consts.dart';


@injectable
class AppThemeDataService {
  static final PublishSubject<ThemeData> _darkModeSubject =
      PublishSubject<ThemeData>();

  Stream<ThemeData> get darkModeStream => _darkModeSubject.stream;

  final ThemePreferencesHelper _preferencesHelper;

  AppThemeDataService(this._preferencesHelper);

  static Color get primaryColor {
    return HexColor.fromHex('#F07E24');
  }

  static Color get successColor {
    return HexColor.fromHex('#18ba94');
  }

  static MaterialColor get swatchColor {
    return Colors.orange;
  }

  ThemeData getActiveTheme() {
    var dark = _preferencesHelper.isDarkMode();
    final lightScheme = ColorScheme.fromSeed(
      seedColor: primaryColor,
      primary: primaryColor,
      background: const Color.fromRGBO(236, 239, 241, 1),
    );
    final darkScheme = ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.dark,
        error: Colors.red[900],
        errorContainer: Colors.red[100],
        primary: Colors.grey[900]);
    if (dark == true) {
      return ThemeData(
          brightness: Brightness.dark,
          colorScheme: darkScheme,
          useMaterial3: true,
          primarySwatch: Colors.indigo,
          focusColor: primaryColor,
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(foregroundColor: Colors.white70)),
          checkboxTheme: CheckboxThemeData(
            checkColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              const Set<MaterialState> interactiveStates = <MaterialState>{
                MaterialState.pressed,
                MaterialState.hovered,
                MaterialState.focused,
              };
              if (states.any(interactiveStates.contains)) {
                return Colors.grey;
              }
              return Colors.white;
            }),
            fillColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              const Set<MaterialState> interactiveStates = <MaterialState>{
                MaterialState.pressed,
                MaterialState.hovered,
                MaterialState.focused,
              };
              if (states.any(interactiveStates.contains)) {
                return Colors.black;
              }
              return Colors.indigo;
            }),
          ),
          cardColor: Colors.grey[150],
          fontFamily: 'Dubai',
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(ThemeConstants.circularRounded),
            ),
          )),
          textTheme: const TextTheme(
            labelLarge: TextStyle(
              color: Colors.white,
            ),
          ));
    }
    return ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        brightness: Brightness.light,
        primaryColor: primaryColor,
        colorScheme: lightScheme,
        useMaterial3: true,
        focusColor: primaryColor,
        primarySwatch: swatchColor,
        cardColor: const Color.fromRGBO(245, 245, 245, 1),
        textTheme: const TextTheme(labelLarge: TextStyle(color: Colors.white)),
        fontFamily: 'Dubai',
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ThemeConstants.circularRounded),
        ))),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ThemeConstants.circularRounded),
          ),
        )),
        timePickerTheme: const TimePickerThemeData(
          dialBackgroundColor: Color.fromRGBO(235, 235, 235, 1),
          dayPeriodBorderSide:
              BorderSide(color: Color.fromRGBO(235, 235, 235, 1)),
        ));
  }

  void switchDarkMode(bool darkMode) async {
    if (darkMode) {
      _preferencesHelper.setDarkMode();
    } else {
      _preferencesHelper.setDayMode();
    }
    var activeTheme = getActiveTheme();
    _darkModeSubject.add(activeTheme);
  }
}

class AppColors {
  static Color primaryColorLight = const Color(0xFFE9E9F0);
  static Color transparentBlackColor = const Color(0x83000000);
  static Color gray = const Color(0xffa8a8a8);
  static Color lightGray = const Color(0xFFEBEBEB);
  static Color darkGray = const Color(0xFFDBDBDB);
  static Color secondaryColor = const Color(0xFF363636);
  static Color transparentGrayColor = const Color.fromARGB(107, 168, 168, 168);
  static Color medDarkGrey = const Color(0xFF363636);
  static Color lightBlue = const Color(0xFFE9E9F0);
  static Color green = const Color(0xFF00944F);
  static Color darkGreen = const Color(0xFF063113);
  static Color red = const Color(0xffDF082C);
  static Color orange = const Color(0xffF08234);
  static Color lightOrange = const Color(0xFFFFEADB);
  static Color extraLightOrange = const Color(0xFFFFF3EB);
  static Color darkBlue = const Color(0xFF18407A);

  static List<Color> get userColors => const [
        Color(0xFF8FA1B4),
        Color(0xFF8DCF30),
        Color(0xFFEFA34E),
        Color(0xFFC89EF3),
      ];

  static List<Color> get userTextColors => const [
        Color(0xFF345B85),
        Color(0xFF3C6700),
        Color(0xFF8D5300),
        Color(0xFF4E009E),
      ];

  static List<Color> get orderColors => const [
        Color(0xFF476F47),
        Color(0xFF18407A),
        Color(0xFFCD7D64),
      ];

  static List<BoxShadow> get defaultShadow => const [
        BoxShadow(
          color: Color(0x29000000),
          offset: Offset(0, 3),
          blurRadius: 16,
          spreadRadius: 0,
        ),
      ];
}
