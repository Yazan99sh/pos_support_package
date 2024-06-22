
import 'package:json_annotation/json_annotation.dart';
import 'package:support_pkg/modules/module_cards/data/response/business_response.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/businesse_entity.dart';
part 'get_businesses_response.g.dart';

@JsonSerializable()
class GetBusinessesResponse{
  String? message;
  int? statusCode;
  bool? isSucceeded;

  List<BusinessResponse>? businesses;


  GetBusinessesResponse(
      this.message, this.statusCode, this.isSucceeded, this.businesses);

  factory GetBusinessesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBusinessesResponseFromJson(json);

}



extension MapToEntity on GetBusinessesResponse {
  BusinessesEntity toEntity() => BusinessesEntity(
     businesses:  businesses == null ? [] : businesses!.map((e) => e.toEntity()).toList()
  );
}