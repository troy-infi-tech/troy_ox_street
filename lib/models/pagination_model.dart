import 'package:json_annotation/json_annotation.dart';

part 'pagination_model.g.dart';

@JsonSerializable()
class PaginationModel {
  PaginationModel(this.page, this.pageSize, this.totalCount);

  int? page;
  int? pageSize;
  int? totalCount;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationModelToJson(this);
}
