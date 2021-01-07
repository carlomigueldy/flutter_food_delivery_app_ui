import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

import '../../app/locator.dart';
import '../../models/food.dart';
import 'food_category_service.dart';

@lazySingleton
class FoodService with ReactiveServiceMixin {
  final FoodCategoryService _foodCategoryService =
      locator<FoodCategoryService>();

  RxValue<List<Food>> _foods = RxValue<List<Food>>(
    initial: [],
  );

  List<Food> get foods => _foods.value;

  FoodService() {
    _foods.value = [
      Food(
        id: 1,
        imageUrl: 'assets/foods/meal_1.jpg',
        name: 'Pancake',
        rating: 4.5,
        category: _foodCategoryService.foodCategories[0],
      ),
      Food(
        id: 2,
        imageUrl: 'assets/foods/meal_3.jpg',
        name: 'Egg with Lumpia',
        rating: 5.0,
        category: _foodCategoryService.foodCategories[0],
      ),
      Food(
        id: 3,
        imageUrl: 'assets/foods/meal_2.jpg',
        name: 'Ambot',
        rating: 4.25,
        category: _foodCategoryService.foodCategories[1],
      ),
      Food(
        id: 4,
        imageUrl: 'assets/foods/meal_4.jpg',
        name: 'Wombo Meal',
        rating: 2.5,
        category: _foodCategoryService.foodCategories[1],
      ),
      Food(
        id: 5,
        imageUrl: 'assets/foods/meal_5.jpg',
        name: 'Seafood Lang',
        rating: 4.0,
        category: _foodCategoryService.foodCategories[2],
      ),
      Food(
        id: 6,
        imageUrl: 'assets/foods/meal_6.jpg',
        name: 'Lami Tanawon',
        rating: 5.0,
        category: _foodCategoryService.foodCategories[2],
      ),
      Food(
        id: 7,
        imageUrl: 'assets/foods/meal_7.jpg',
        name: 'Yay Ka',
        rating: 3.5,
        category: _foodCategoryService.foodCategories[3],
      ),
      Food(
        id: 8,
        imageUrl: 'assets/foods/meal_8.jpg',
        name: 'Meat Rolls',
        rating: 3.5,
        category: _foodCategoryService.foodCategories[3],
      ),
      Food(
        id: 9,
        imageUrl: 'assets/foods/meal_9.jpg',
        name: 'Pizza',
        rating: 2.5,
        category: _foodCategoryService.foodCategories[4],
      ),
      Food(
        id: 10,
        imageUrl: 'assets/foods/meal_10.jpg',
        name: 'Pagod na Pizza',
        rating: 1.5,
        category: _foodCategoryService.foodCategories[4],
      ),
      Food(
        id: 11,
        imageUrl: 'assets/foods/meal_11.jpg',
        name: 'Pang Diet',
        rating: 4.5,
        category: _foodCategoryService.foodCategories[5],
      ),
    ];

    listenToReactiveValues([_foods]);
  }
}
