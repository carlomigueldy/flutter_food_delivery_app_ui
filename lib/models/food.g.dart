// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) {
  return Food(
    id: json['id'] as int,
    name: json['name'] as String,
    category: FoodCategory.fromJson(json['category'] as Map<String, dynamic>),
    imageUrl: json['image_url'] as String,
    rating: (json['rating'] as num).toDouble(),
  );
}

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'image_url': instance.imageUrl,
      'rating': instance.rating,
    };
