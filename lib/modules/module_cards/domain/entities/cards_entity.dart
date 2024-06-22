import 'package:support_pkg/modules/module_cards/domain/entities/nfc_card_entity.dart';

class CardsEntity {
  List<NfcCardEntity> cards;
  int currentPageNumber;
  int totalPageCount;

  CardsEntity({ required this.cards, required this.currentPageNumber, required this.totalPageCount});
}