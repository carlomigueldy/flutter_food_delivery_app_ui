import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

import '../../app/locator.dart';
import '../../models/restaurant.dart';
import 'food_category_service.dart';

@lazySingleton
class RestaurantService with ReactiveServiceMixin {
  final FoodCategoryService _foodCategoryService =
      locator<FoodCategoryService>();

  RxValue<List<Restaurant>> _restaurants = RxValue<List<Restaurant>>(
    initial: [],
  );

  List<Restaurant> get restaurants => _restaurants.value;

  RestaurantService() {
    _restaurants.value = [
      Restaurant(
        id: 1,
        name: 'Restaurant A',
        estimatedTimeOfDelivery: '15 - 20 mins',
        imageUrl: 'assets/restaurants/restaurant_1.jpg',
        rating: 5.0,
        categories: [
          _foodCategoryService.foodCategories[0],
          _foodCategoryService.foodCategories[1],
          _foodCategoryService.foodCategories[2],
        ],
      ),
      Restaurant(
        id: 2,
        name: 'Restaurant B',
        estimatedTimeOfDelivery: '10 - 15 mins',
        imageUrl: 'assets/restaurants/restaurant_2.jpg',
        rating: 5.0,
        categories: [
          _foodCategoryService.foodCategories[1],
          _foodCategoryService.foodCategories[2],
          _foodCategoryService.foodCategories[3],
        ],
      ),
      Restaurant(
        id: 3,
        name: 'Restaurant C',
        estimatedTimeOfDelivery: '5 - 10 mins',
        imageUrl: 'assets/restaurants/restaurant_3.jpg',
        rating: 5.0,
        categories: [
          _foodCategoryService.foodCategories[4],
          _foodCategoryService.foodCategories[5],
          _foodCategoryService.foodCategories[2],
        ],
      ),
      Restaurant(
        id: 4,
        name: 'Restaurant D',
        estimatedTimeOfDelivery: '20 - 30 mins',
        imageUrl: 'assets/restaurants/restaurant_4.jpg',
        rating: 5.0,
        categories: [
          _foodCategoryService.foodCategories[2],
          _foodCategoryService.foodCategories[5],
          _foodCategoryService.foodCategories[1],
        ],
      ),
      Restaurant(
        id: 5,
        name: 'Restaurant E',
        estimatedTimeOfDelivery: '5 - 20 mins',
        imageUrl: 'assets/restaurants/restaurant_5.jpg',
        rating: 5.0,
        categories: [
          _foodCategoryService.foodCategories[1],
          _foodCategoryService.foodCategories[5],
          _foodCategoryService.foodCategories[3],
        ],
      ),
    ];

    listenToReactiveValues([_restaurants]);
  }
}
