// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCardsResponse _$GetCardsResponseFromJson(Map<String, dynamic> json) =>
    GetCardsResponse(
      (json['value'] as List<dynamic>)
          .map((e) => CardResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['currentPageNumber'] as num).toInt(),
      (json['totalPageCount'] as num).toInt(),
    );

Map<String, dynamic> _$GetCardsResponseToJson(GetCardsResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currentPageNumber': instance.currentPageNumber,
      'totalPageCount': instance.totalPageCount,
    };
