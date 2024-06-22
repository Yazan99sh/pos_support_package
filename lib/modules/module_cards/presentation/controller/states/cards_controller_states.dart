import 'package:support_pkg/core/screens/screens.dart';

abstract class CardsControllerState {
  final Screens screen;
  CardsControllerState(this.screen);
}

class CardsInitState extends CardsControllerState {
  CardsInitState({required Screens screen}) : super(screen);
}

class CardsLoadedState extends CardsControllerState {
  CardsLoadedState({required Screens screen, }) : super(screen);
}
