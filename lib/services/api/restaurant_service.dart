import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_starter/services/api/base_service.dart';
import 'package:stacked_architecture_starter/services/api/food_service.dart';

import '../../app/utils/list.dart';
import '../../app/locator.dart';
import '../../models/restaurant.dart';
import 'food_category_service.dart';

@lazySingleton
class RestaurantService extends BaseService<Restaurant>
    with ReactiveServiceMixin {
  final FoodCategoryService _foodCategoryService =
      locator<FoodCategoryService>();
  final FoodService _foodService = locator<FoodService>();

  RxValue<List<Restaurant>> _restaurants = RxValue<List<Restaurant>>(
    initial: [],
  );

  List<Restaurant> get restaurants => _restaurants.value;

  RestaurantService() {
    _restaurants.value = [
      Restaurant(
        id: 1,
        name: "Carlo's Bistro",
        estimatedTimeOfDelivery: '15 - 20 mins',
        imageUrl: 'assets/restaurants/restaurant_1.jpg',
        saved: true,
        rating: 5.0,
        categories: [
          _foodCategoryService.foodCategories[0],
          _foodCategoryService.foodCategories[1],
          _foodCategoryService.foodCategories[2],
        ],
        foods: shuffle(_foodService.foods),
      ),
      Restaurant(
        id: 2,
        name: "Miguelito's Pizzarreti",
        estimatedTimeOfDelivery: '10 - 15 mins',
        imageUrl: 'assets/restaurants/restaurant_2.jpg',
        saved: false,
        rating: 5.0,
        categories: [
          _foodCategoryService.foodCategories[1],
          _foodCategoryService.foodCategories[2],
          _foodCategoryService.foodCategories[3],
        ],
        foods: shuffle(_foodService.foods),
      ),
      Restaurant(
        id: 3,
        name: "Marie's Kan-anan",
        estimatedTimeOfDelivery: '5 - 10 mins',
        imageUrl: 'assets/restaurants/restaurant_3.jpg',
        saved: true,
        rating: 5.0,
        categories: [
          _foodCategoryService.foodCategories[4],
          _foodCategoryService.foodCategories[5],
          _foodCategoryService.foodCategories[2],
        ],
        foods: shuffle(_foodService.foods),
      ),
      Restaurant(
        id: 4,
        name: "Jamm Dog's",
        estimatedTimeOfDelivery: '20 - 30 mins',
        imageUrl: 'assets/restaurants/restaurant_4.jpg',
        saved: false,
        rating: 5.0,
        categories: [
          _foodCategoryService.foodCategories[2],
          _foodCategoryService.foodCategories[5],
          _foodCategoryService.foodCategories[1],
        ],
        foods: shuffle(_foodService.foods),
      ),
      Restaurant(
        id: 5,
        name: "The Shookt",
        estimatedTimeOfDelivery: '5 - 20 mins',
        imageUrl: 'assets/restaurants/restaurant_5.jpg',
        saved: false,
        rating: 5.0,
        categories: [
          _foodCategoryService.foodCategories[1],
          _foodCategoryService.foodCategories[5],
          _foodCategoryService.foodCategories[3],
        ],
        foods: shuffle(_foodService.foods),
      ),
    ];

    _restaurants.value = shuffle(_restaurants.value);

    listenToReactiveValues([_restaurants]);
  }

  @override
  Future<List<Restaurant>> fetchAll() async {
    return _restaurants.value;
  }

  @override
  Future<Restaurant> fetchById({int id}) async {
    return _restaurants.value.firstWhere((element) => element.id == id);
  }

  @override
  Future<Restaurant> requestCreate({Restaurant model}) {
    // TODO: implement requestCreate
    throw UnimplementedError();
  }

  @override
  Future<bool> requestDeleteById({int id}) {
    // TODO: implement requestDeleteById
    throw UnimplementedError();
  }

  @override
  Future<bool> requestForceDeleteById({int id}) {
    // TODO: implement requestForceDeleteById
    throw UnimplementedError();
  }

  @override
  Future<bool> requestRestoreById({int id}) {
    // TODO: implement requestRestoreById
    throw UnimplementedError();
  }

  @override
  Future<Restaurant> requestUpdate({Restaurant model, int id}) {
    // TODO: implement requestUpdate
    throw UnimplementedError();
  }
}
