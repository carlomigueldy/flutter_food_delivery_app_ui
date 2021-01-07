// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/account_settings/account_settings_view.dart';
import '../ui/views/food_categories/_foodCategoryId/food_category_detail_view.dart';
import '../ui/views/food_categories/food_categories_view.dart';
import '../ui/views/foods/_foodId/food_detail_view.dart';
import '../ui/views/foods/foods_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/main/main_view.dart';
import '../ui/views/payment_method/payment_method_view.dart';
import '../ui/views/restaurants/_restaurantId/restaurant_detail_view.dart';
import '../ui/views/restaurants/restaurants_view.dart';
import '../ui/views/saved/saved_view.dart';
import '../ui/views/search/search_view.dart';
import '../ui/views/shopping_cart/shopping_cart_view.dart';
import '../ui/views/splash/splash_view.dart';

class Routes {
  static const String splashView = '/';
  static const String mainView = '/main';
  static const String homeView = '/home';
  static const String paymentMethodView = '/payment-method';
  static const String savedView = '/saved';
  static const String accountSettingsView = '/account-settings';
  static const String searchView = '/search';
  static const String shoppingCartView = '/shopping-cart';
  static const String foodsView = '/foods';
  static const String _foodDetailView = '/foods/:foodId';
  static String foodDetailView({@required dynamic foodId}) => '/foods/$foodId';
  static const String foodCategoriesView = '/food-categories';
  static const String _foodCategoryDetailView =
      '/food-categories/:foodCategoryId';
  static String foodCategoryDetailView({@required dynamic foodCategoryId}) =>
      '/food-categories/$foodCategoryId';
  static const String restaurantsView = '/restaurants';
  static const String _restaurantDetailView = '/restaurants/:restaurantId';
  static String restaurantDetailView({@required dynamic restaurantId}) =>
      '/restaurants/$restaurantId';
  static const all = <String>{
    splashView,
    mainView,
    homeView,
    paymentMethodView,
    savedView,
    accountSettingsView,
    searchView,
    shoppingCartView,
    foodsView,
    _foodDetailView,
    foodCategoriesView,
    _foodCategoryDetailView,
    restaurantsView,
    _restaurantDetailView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.mainView, page: MainView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.paymentMethodView, page: PaymentMethodView),
    RouteDef(Routes.savedView, page: SavedView),
    RouteDef(Routes.accountSettingsView, page: AccountSettingsView),
    RouteDef(Routes.searchView, page: SearchView),
    RouteDef(Routes.shoppingCartView, page: ShoppingCartView),
    RouteDef(Routes.foodsView, page: FoodsView),
    RouteDef(Routes._foodDetailView, page: FoodDetailView),
    RouteDef(Routes.foodCategoriesView, page: FoodCategoriesView),
    RouteDef(Routes._foodCategoryDetailView, page: FoodCategoryDetailView),
    RouteDef(Routes.restaurantsView, page: RestaurantsView),
    RouteDef(Routes._restaurantDetailView, page: RestaurantDetailView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashView(),
        settings: data,
      );
    },
    MainView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MainView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    PaymentMethodView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PaymentMethodView(),
        settings: data,
      );
    },
    SavedView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SavedView(),
        settings: data,
      );
    },
    AccountSettingsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AccountSettingsView(),
        settings: data,
      );
    },
    SearchView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchView(),
        settings: data,
      );
    },
    ShoppingCartView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppingCartView(),
        settings: data,
      );
    },
    FoodsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FoodsView(),
        settings: data,
      );
    },
    FoodDetailView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FoodDetailView(),
        settings: data,
      );
    },
    FoodCategoriesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FoodCategoriesView(),
        settings: data,
      );
    },
    FoodCategoryDetailView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FoodCategoryDetailView(),
        settings: data,
      );
    },
    RestaurantsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RestaurantsView(),
        settings: data,
      );
    },
    RestaurantDetailView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RestaurantDetailView(),
        settings: data,
      );
    },
  };
}
