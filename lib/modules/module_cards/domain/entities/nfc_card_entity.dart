
import 'package:support_pkg/modules/module_cards/domain/enum/card_status_type_enum.dart';

class NfcCardEntity{
  int? id;

  String? tagId;
  String? nfc;

  CardStatusEnum? cardStatusEnum;

  NfcCardEntity({this.id,  this.tagId, this.nfc,
       this.cardStatusEnum});
}