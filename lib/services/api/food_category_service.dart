import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

import '../../models/food_category.dart';

@lazySingleton
class FoodCategoryService with ReactiveServiceMixin {
  RxValue<List<FoodCategory>> _foodCategories = RxValue<List<FoodCategory>>(
    initial: [
      FoodCategory(
        id: 1,
        name: 'Burgers',
        imageUrl: 'assets/food_categories/burgers.jpg',
      ),
      FoodCategory(
        id: 2,
        name: 'Chicken',
        imageUrl: 'assets/food_categories/chicken.jpg',
      ),
      FoodCategory(
        id: 3,
        name: 'Pasta',
        imageUrl: 'assets/food_categories/pasta.jpg',
      ),
      FoodCategory(
        id: 4,
        name: 'Pizza',
        imageUrl: 'assets/food_categories/pizza.jpg',
      ),
      FoodCategory(
        id: 5,
        name: 'Salad',
        imageUrl: 'assets/food_categories/salad.jpg',
      ),
      FoodCategory(
        id: 6,
        name: 'Soup',
        imageUrl: 'assets/food_categories/soup.jpg',
      ),
    ],
  );

  List<FoodCategory> get foodCategories => _foodCategories.value;

  FoodCategoryService() {
    listenToReactiveValues([_foodCategories]);
  }
}
