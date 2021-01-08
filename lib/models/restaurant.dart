import 'package:json_annotation/json_annotation.dart';
import 'package:stacked_architecture_starter/models/food.dart';
import 'package:stacked_architecture_starter/models/food_category.dart';

part 'restaurant.g.dart';

@JsonSerializable(
  nullable: false,
  fieldRename: FieldRename.snake,
)
class Restaurant {
  final int id;
  final String name;
  final List<FoodCategory> categories;
  final List<Food> foods;
  final String imageUrl;
  final double rating;
  final bool saved;
  final String estimatedTimeOfDelivery;

  Restaurant({
    this.id,
    this.name: "",
    this.categories,
    this.foods,
    this.imageUrl,
    this.rating,
    this.saved,
    this.estimatedTimeOfDelivery,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantToJson(this);
}
