import 'package:stacked/stacked.dart';

import '../../../models/food.dart' show Food;
import '../../../models/food_category.dart' show FoodCategory;
import '../../../models/restaurant.dart' show Restaurant;
import '../../../services/api/food_service.dart' show FoodService;
import '../../../services/api/restaurant_service.dart' show RestaurantService;
import '../../../models/user.dart' show User;
import '../../../app/locator.dart' show locator;
import '../../../services/api/authentication_service.dart'
    show AuthenticationService;
import '../../../services/api/food_category_service.dart'
    show FoodCategoryService;

class HomeViewModel extends ReactiveViewModel {
  final AuthenticationService _authService = locator<AuthenticationService>();
  final FoodCategoryService _foodCategoryService =
      locator<FoodCategoryService>();
  final FoodService _foodService = locator<FoodService>();
  final RestaurantService _restaurantService = locator<RestaurantService>();

  User get user => _authService.user;

  List<FoodCategory> get foodCategories => _foodCategoryService.foodCategories;
  List<Restaurant> get restaurants => _restaurantService.restaurants;
  List<Food> get foods => _foodService.foods;

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_authService];

  Future<void> logout() async {
    await _authService.logout();
  }
}
