// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodCategory _$FoodCategoryFromJson(Map<String, dynamic> json) {
  return FoodCategory(
    id: json['id'] as int,
    name: json['name'] as String,
    imageUrl: json['image_url'] as String,
  );
}

Map<String, dynamic> _$FoodCategoryToJson(FoodCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
    };
