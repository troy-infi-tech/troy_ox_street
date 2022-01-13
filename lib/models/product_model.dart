import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  String uuid;
  String name;
  String? description;
  int rank;
  String status;
  bool justDropped;
  List<String>? imageUrls;
  bool isDeleted;
  String? seo;
  DateTime createdAt;
  DateTime? updatedAt;

  ProductModel(
      this.uuid,
      this.name,
      this.description,
      this.rank,
      this.status,
      this.justDropped,
      this.imageUrls,
      this.isDeleted,
      this.seo,
      this.createdAt,
      this.updatedAt);

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
