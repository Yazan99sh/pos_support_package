import 'package:json_annotation/json_annotation.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/nfc_card_entity.dart';
import 'package:support_pkg/modules/module_cards/domain/enum/card_status_type_enum.dart';
part 'card_response.g.dart';

@JsonSerializable()
class CardResponse{
  int? id;
  String? businessId;
  String? tagId;
  String? nfc;

  int? cardTypeId;
  String? cardTypeName;

  int? cardStatusId;
  String? cardStatusName;

  CardResponse(
      this.id,
      this.businessId,
      this.tagId,
      this.nfc,
      this.cardTypeId,
      this.cardTypeName,
      this.cardStatusId,
      this.cardStatusName);

  factory CardResponse.fromJson(Map<String, dynamic> json) =>
      _$CardResponseFromJson(json);
}
extension MapToEntity on CardResponse {
  NfcCardEntity toEntity() => NfcCardEntity(
    id: id,
    cardStatusEnum: CardStatusEnum.getEnum(cardStatusId ?? 0),
    nfc: nfc,
    tagId: tagId
  );
}