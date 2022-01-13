import 'package:troy_ox_street/models/pagination_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:troy_ox_street/models/product_model.dart';

part 'response_model.g.dart';

@JsonSerializable()
class ResponseModel {
  ResponseModel(this.data, this.pagination);

  List<ProductModel>? data;
  PaginationModel? pagination;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseModelToJson(this);
}
