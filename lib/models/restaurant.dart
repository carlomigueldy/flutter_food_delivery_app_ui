import 'package:json_annotation/json_annotation.dart';
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
  final String imageUrl;
  final double rating;
  final String estimatedTimeOfDelivery;

  Restaurant({
    this.id,
    this.name: "",
    this.categories,
    this.imageUrl,
    this.rating,
    this.estimatedTimeOfDelivery,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantToJson(this);
}
