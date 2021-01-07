// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodCategory _$FoodCategoryFromJson(Map<String, dynamic> json) {
  return FoodCategory(
    name: json['name'] as String,
    imageUrl: json['image_url'] as String,
  );
}

Map<String, dynamic> _$FoodCategoryToJson(FoodCategory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image_url': instance.imageUrl,
    };
