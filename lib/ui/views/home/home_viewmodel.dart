import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture_starter/app/routes.gr.dart';
import 'package:stacked_services/stacked_services.dart';

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
  final NavigationService _navigationService = locator<NavigationService>();
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

  List<BottomNavigationBarItem> get bottomNavigationBarItems => [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_outline),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Account',
        )
      ];

  Future<void> logout() async {
    await _authService.logout();
  }

  onTapNavigateToView({int index}) {
    if (index == 0) return;

    Map<int, String> views = {
      0: Routes.homeView,
      1: Routes.searchView,
      2: Routes.shoppingCartView,
      3: Routes.savedView,
      4: Routes.accountSettingsView,
    };

    _navigationService.navigateTo(views[index]);
  }

  navigateToPaymentMethodView() {
    _navigationService.navigateTo(Routes.paymentMethodView);
  }

  navigateToFoodCategoryDetailView({@required int foodCategoryId}) {
    _navigationService.navigateTo(
      Routes.foodCategoryDetailView(foodCategoryId: foodCategoryId),
    );
  }

  navigateToRestaurantDetailView({@required int restaurantId}) {
    _navigationService.navigateTo(
      Routes.restaurantDetailView(restaurantId: restaurantId),
    );
  }

  navigateToFoodDetailView({@required int foodId}) {
    _navigationService.navigateTo(
      Routes.foodDetailView(foodId: foodId),
    );
  }
}
