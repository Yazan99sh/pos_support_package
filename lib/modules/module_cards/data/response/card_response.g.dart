// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardResponse _$CardResponseFromJson(Map<String, dynamic> json) => CardResponse(
      (json['id'] as num?)?.toInt(),
      json['businessId'] as String?,
      json['tagId'] as String?,
      json['nfc'] as String?,
      (json['cardTypeId'] as num?)?.toInt(),
      json['cardTypeName'] as String?,
      (json['cardStatusId'] as num?)?.toInt(),
      json['cardStatusName'] as String?,
    );

Map<String, dynamic> _$CardResponseToJson(CardResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'businessId': instance.businessId,
      'tagId': instance.tagId,
      'nfc': instance.nfc,
      'cardTypeId': instance.cardTypeId,
      'cardTypeName': instance.cardTypeName,
      'cardStatusId': instance.cardStatusId,
      'cardStatusName': instance.cardStatusName,
    };
