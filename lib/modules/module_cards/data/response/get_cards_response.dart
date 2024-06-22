import 'package:json_annotation/json_annotation.dart';
import 'package:support_pkg/modules/module_cards/data/response/card_response.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/cards_entity.dart';
part 'get_cards_response.g.dart';

@JsonSerializable()
class GetCardsResponse {
  List<CardResponse> value;
  int currentPageNumber;
  int totalPageCount;

  GetCardsResponse(this.value, this.currentPageNumber, this.totalPageCount);


  factory GetCardsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCardsResponseFromJson(json);
}
extension MapToEntity on GetCardsResponse {
  CardsEntity toEntity() => CardsEntity(
    currentPageNumber: currentPageNumber,
    totalPageCount: totalPageCount,
    cards: value.map((e) => e.toEntity()).toList()
  );
}