import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:support_pkg/core/hive/box_keys.dart';
import 'package:support_pkg/core/hive/boxes.dart';
import 'package:support_pkg/modules/module_auth/core/exceptions/auth_exception.dart';
 @injectable
class SupportAuthPrefsHelper {
  var box = Hive.box(SupportBoxes.supportAuthorization);

  void setEmail(String email) {
    box.put(BoxKeys.email, email);
  }

  String? getEmail() {
    return box.get(BoxKeys.password);
  }

  void setPassword(String password) {
    box.put(BoxKeys.password, password);
  }

  String? getPassword() {
    return box.get(BoxKeys.password);
  }

  bool isSignedIn() {
    try {
      String? uid = getToken();
      return uid != null;
    } catch (e) {
      return false;
    }
  }
  void setUserName(String? email) {
    box.put(BoxKeys.cashierName, email);
  }

  String? getUserName() {
    return box.get(BoxKeys.cashierName);
  }

  /// @Function saves token string
  /// @returns void
  void setToken(String? token) {
    if (token != null) {
      box.put(BoxKeys.token, token);
      box.put(
        BoxKeys.tokenDate,
        DateTime.now().toIso8601String(),
      );
    }
  }

  /// @return String Token String
  /// @throw Unauthorized Exception when token is null
  String? getToken() {
    var token = box.get(BoxKeys.token);
    if (token == null) {
      throw const AuthorizationException('Token not found');
    }
    return token;
  }

  /// @return DateTime tokenDate
  /// @throw UnauthorizedException when token date not found
  DateTime getTokenDate() {
    var dateStr = box.get(BoxKeys.tokenDate);
    if (dateStr == null) {
      throw const AuthorizationException('Token date not found');
    }
    return DateTime.parse(dateStr);
  }

  void deleteToken() {
    box.delete(BoxKeys.token);
    box.delete(BoxKeys.tokenDate);
  }

  Future<void> cleanAll() async {
    await box.clear();
    // await Sentry.configureScope((scope) => scope.setUser(null));
  }

  Future<void> cleanCredentialData() async {
    await box.delete(BoxKeys.password);
    await box.delete(BoxKeys.token);
    await box.delete(BoxKeys.tokenDate);
  }

}
