 import 'package:support_pkg/core/screens/screens.dart';

abstract class LoginControllerState {
  final Screens screen;

  LoginControllerState(this.screen);
}

class InitLoginControllerState extends LoginControllerState {
  InitLoginControllerState({required Screens screen}) : super(screen);
}

class LoadingLoginControllerState extends LoginControllerState {
  LoadingLoginControllerState({required Screens screen}) : super(screen);
}
