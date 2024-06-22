import 'package:json_annotation/json_annotation.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/businesse_entity.dart';
part 'business_response.g.dart';
@JsonSerializable()
class BusinessResponse{
  String? name;
  String? id;

  BusinessResponse(this.name, this.id);

  factory BusinessResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessResponseFromJson(json);
}

extension MapToEntity on BusinessResponse {
  BusinessEntity toEntity() => BusinessEntity(
      id: id,
      name: name
  );
}