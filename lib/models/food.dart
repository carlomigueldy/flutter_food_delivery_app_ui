import 'package:json_annotation/json_annotation.dart';
import 'package:stacked_architecture_starter/models/food_category.dart';

part 'food.g.dart';

@JsonSerializable(
  nullable: false,
  fieldRename: FieldRename.snake,
)
class Food {
  final String name;
  final FoodCategory category;
  final String imageUrl;
  final double rating;

  Food({
    this.name: "",
    this.category,
    this.imageUrl,
    this.rating,
  });

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
  Map<String, dynamic> toJson() => _$FoodToJson(this);
}
