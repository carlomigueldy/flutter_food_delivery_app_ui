// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return Restaurant(
    id: json['id'] as int,
    name: json['name'] as String,
    categories: (json['categories'] as List)
        .map((e) => FoodCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
    imageUrl: json['image_url'] as String,
    rating: (json['rating'] as num).toDouble(),
    saved: json['saved'] as bool,
    estimatedTimeOfDelivery: json['estimated_time_of_delivery'] as String,
  );
}

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categories': instance.categories,
      'image_url': instance.imageUrl,
      'rating': instance.rating,
      'saved': instance.saved,
      'estimated_time_of_delivery': instance.estimatedTimeOfDelivery,
    };
