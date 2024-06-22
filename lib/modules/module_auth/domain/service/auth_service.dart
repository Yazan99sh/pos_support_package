// import 'dart:convert';
// import 'package:crypto/crypto.dart';
// import 'package:get/get.dart';
// import 'package:injectable/injectable.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:smart_epay_pos_flutter/core/data_model/data_model.dart';
// import 'package:smart_epay_pos_flutter/core/database/database.dart';
// import 'package:smart_epay_pos_flutter/core/enum/user_role_enum.dart';
// import 'package:smart_epay_pos_flutter/core/utils/defaults/default_config_value.dart';
// import 'package:smart_epay_pos_flutter/generated/l10n.dart';
// import 'package:smart_epay_pos_flutter/injection.dart';
// import 'package:smart_epay_pos_flutter/modules/core_modules/module_auth/core/authorization_routes.dart';
// import 'package:smart_epay_pos_flutter/modules/core_modules/module_auth/core/enums/auth_status.dart';
// import 'package:smart_epay_pos_flutter/modules/core_modules/module_auth/core/exceptions/auth_exception.dart';
// import 'package:smart_epay_pos_flutter/modules/core_modules/module_auth/data/presistance/support_auth_prefs_helper.dart';
// import 'package:smart_epay_pos_flutter/modules/core_modules/module_auth/data/repository/auth_repository.dart';
// import 'package:smart_epay_pos_flutter/modules/core_modules/module_auth/data/request/get_terminal_request.dart';
// import 'package:smart_epay_pos_flutter/modules/core_modules/module_auth/data/request/login_request.dart';
// import 'package:smart_epay_pos_flutter/modules/core_modules/module_auth/data/response/get_terminal_response.dart';
// import 'package:smart_epay_pos_flutter/modules/core_modules/module_auth/data/response/login_response.dart';
// import 'package:smart_epay_pos_flutter/modules/core_modules/module_auth/domain/model/terminal_model.dart';
// import 'package:smart_epay_pos_flutter/modules/core_modules/module_notifications/service/pushy_service.dart';
// import 'package:smart_epay_pos_flutter/utils/global/global_state_manager.dart';
//
// @Injectable()
// class AuthService {
//   final AuthPrefsHelper _prefsHelper = ii<AuthPrefsHelper>();
//   final PublishSubject<AuthStatus> _authSubject = PublishSubject<AuthStatus>();
//   final AuthRepository _authRepository;
//
//   AuthService(
//     this._authRepository,
//   );
//
//   bool get isLoggedIn => _prefsHelper.isSignedIn();
//
//   Stream<AuthStatus> get authListener => _authSubject.stream;
//
//   Future<void> loginApi(String password) async {
//     try {
//       LoginRequest loginRequest = LoginRequest(
//         terminalId: _prefsHelper.getTerminal(),
//         posSerialNumber: _prefsHelper.getPOS(),
//         password: password,
//         softwareVersion: _prefsHelper.getAppVersion(),
//       );
//       LoginResponse? response = await _authRepository.login(loginRequest);
//       if (response == null) {
//         if (ii<GlobalStateManager>().offlineMode.value) {
//           loginLocally(password);
//         } else {
//           _authSubject.addError(S.current.pleaseCheckYourInternetConnection);
//           throw AuthorizationException(
//               S.current.pleaseCheckYourInternetConnection);
//         }
//       } else if (response.accessToken == null) {
//         if (response.msg == '-2') {
//           loginLocally(password);
//         } else {
//           _authSubject.addError(response.msg ?? S.current.errorHappened);
//           throw AuthorizationException(response.msg ?? S.current.errorHappened);
//         }
//       }
//       _prefsHelper.setToken(response!.accessToken);
//       _prefsHelper.setPassword(password);
//       _prefsHelper.setCashierType(response.userType ?? 'Cashier');
//       _prefsHelper.setCashierID(response.userId ?? '-1');
//       if (ii<DefaultConfigValue>().branchId != '') {
//         PushyService.pushySubscribe('${ii<DefaultConfigValue>().branchId}_Kitchen');
//       }
//       var cashier = await ii<SmartEPayDatabase>()
//           .cashiersDao
//           .getCashierWithoutType(hashPassword(password));
//       _prefsHelper.setCashierName(cashier?.name ?? S.current.defaultCashiers);
//       _authSubject.add(AuthStatus.authorized);
//     } on AuthorizationException catch (e) {
//       _authSubject.addError(e.msg);
//       if (Get.currentRoute != AuthorizationRoutes.loginScreen) {
//         ii<GlobalStateManager>().refreshTokenFailed();
//       }
//     }
//   }
//
//   Future<DataModel> getTerminal(GetTerminalRequest request) async {
//     GetTerminalResponse? response = await _authRepository.getTerminal(request);
//     if (response == null) {
//       return DataModel.withError(S.current.pleaseCheckYourInternetConnection);
//     } else if (response.error != null &&
//         response.result?.contains('OK') == false) {
//       return DataModel.withError(response.error);
//     }
//     return TerminalModel.withData(response);
//   }
//
//   Future<void> loginLocally(String password) async {
//     Cashier? cashier = await ii<SmartEPayDatabase>()
//         .cashiersDao
//         .getCashierWithoutType(hashPassword(password));
//     var cashierType = cashier?.type;
//     if (cashier == null) {
//       _authSubject.addError(S.current.incorrectPassword);
//       throw AuthorizationException(S.current.incorrectPassword);
//     }
//     _prefsHelper.setPassword(password);
//     _prefsHelper.setCashierType(cashierType ?? 'cashier');
//     _prefsHelper.setCashierID(cashier.id.toString());
//     _prefsHelper.setCashierName(cashier.name ?? S.current.defaultCashiers);
//     _authSubject.add(AuthStatus.authorized);
//   }
//
//   Future<String?> getToken() async {
//     try {
//       var tokenDate = _prefsHelper.getTokenDate();
//       var diff = DateTime.now().difference(tokenDate).inMinutes;
//       if (diff.abs() > 1200) {
//         throw TokenExpiredException('Token is created $diff minutes ago');
//       }
//       return 'Bearer ${_prefsHelper.getToken()}';
//     } on AuthorizationException {
//       _prefsHelper.deleteToken();
//       await _prefsHelper.cleanCredentialData();
//       return null;
//     } on TokenExpiredException {
//       try {
//         return await refreshToken();
//       } on AuthorizationException {
//         return null;
//       }
//     } catch (e) {
//       await _prefsHelper.cleanCredentialData();
//       return null;
//     }
//   }
//
//   /// refresh API token, this is done using Firebase Token Refresh
//   Future<String?> refreshToken() async {
//     String? password = _prefsHelper.getPassword();
//     if (password != null) {
//       await loginApi(
//         password,
//       );
//     }
//     var token = await getToken();
//     if (token != null) {
//       return token;
//     }
//     throw const AuthorizationException('error getting token');
//   }
//
//   Future<void> logout() async {
//     await _prefsHelper.cleanCredentialData();
//     PushyService.pushyUnSubscribe('${ii<DefaultConfigValue>().branchId}_${getUserRole.title.capitalize}');
//   }
//
//   String hashPassword(String password) {
//     var bytes = ascii.encode(password); // data being hashed
//     var digest = sha1.convert(bytes);
//     var hashedPassword = base64Encode(digest.bytes);
//     return hashedPassword;
//   }
//   UserRoleEnum get getUserRole => UserRoleEnum.getEnumByTitle(_prefsHelper.getCashierType() ?? 'Cashier');
//
//   Future<Cashier?> get getCurrentCashier =>  ii<SmartEPayDatabase>()
//       .cashiersDao
//       .getCashierWithoutType(hashPassword(_prefsHelper.getPassword() ?? ''));
// }
