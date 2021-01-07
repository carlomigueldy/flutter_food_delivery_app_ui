import 'package:json_annotation/json_annotation.dart';

part 'food_category.g.dart';

@JsonSerializable(
  nullable: false,
  fieldRename: FieldRename.snake,
)
class FoodCategory {
  final int id;
  final String name;
  final String imageUrl;

  FoodCategory({
    this.id,
    this.name: "",
    this.imageUrl,
  });

  factory FoodCategory.fromJson(Map<String, dynamic> json) =>
      _$FoodCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$FoodCategoryToJson(this);
}
