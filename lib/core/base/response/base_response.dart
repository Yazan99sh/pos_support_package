import 'package:json_annotation/json_annotation.dart';
part 'base_response.g.dart';
@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'statusCode')
  final int? statusCode;
  @JsonKey(name: 'isSucceeded')
  final bool? isSucceeded;
  final T? data;

  BaseResponse({
    this.data,
    this.message,
    this.statusCode,
    this.isSucceeded,
  });

  factory BaseResponse.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);
}