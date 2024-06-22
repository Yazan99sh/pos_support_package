import 'package:hive_flutter/hive_flutter.dart';
import 'package:support_pkg/core/hive/boxes.dart';

class HiveSetUp {
  static Future<void> init() async {
    await Hive.initFlutter();
    await adapterRegistration();
    await publicBoxes();
  }

  static Future<void> adapterRegistration() async {
  }

  static Future<void> publicBoxes() async {
    await Hive.openBox(SupportBoxes.supportAuthorization);

    await Hive.openBox('Theme');
    await Hive.openBox('Localization');
    await Hive.openBox('Init');
    // await Hive.openBox('Chat');
    // await Hive.openBox('Order');
    // await Hive.openBox('Notifications');
    // await Hive.openBox('Suggestions');
    await Hive.openBox(SupportBoxes.app);
    await Hive.openBox(SupportBoxes.settings);

  }
}
