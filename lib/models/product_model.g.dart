// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      json['uuid'] as String,
      json['name'] as String,
      json['description'] as String?,
      json['rank'] as int,
      json['status'] as String,
      json['justDropped'] as bool,
      (json['imageUrls'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['isDeleted'] as bool,
      json['seo'] as String?,
      DateTime.parse(json['createdAt'] as String),
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'description': instance.description,
      'rank': instance.rank,
      'status': instance.status,
      'justDropped': instance.justDropped,
      'imageUrls': instance.imageUrls,
      'isDeleted': instance.isDeleted,
      'seo': instance.seo,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
