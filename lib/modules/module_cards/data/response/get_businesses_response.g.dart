// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_businesses_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBusinessesResponse _$GetBusinessesResponseFromJson(
        Map<String, dynamic> json) =>
    GetBusinessesResponse(
      json['message'] as String?,
      (json['statusCode'] as num?)?.toInt(),
      json['isSucceeded'] as bool?,
      (json['businesses'] as List<dynamic>?)
          ?.map((e) => BusinessResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetBusinessesResponseToJson(
        GetBusinessesResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'isSucceeded': instance.isSucceeded,
      'businesses': instance.businesses,
    };
