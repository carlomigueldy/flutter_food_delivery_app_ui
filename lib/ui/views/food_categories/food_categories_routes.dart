import 'package:auto_route/auto_route_annotations.dart';
import 'package:stacked_architecture_starter/ui/views/food_categories/_foodCategoryId/food_category_detail_view.dart';
import 'package:stacked_architecture_starter/ui/views/food_categories/food_categories_view.dart';

const List<AutoRoute<dynamic>> foodCategoriesRoutes = <AutoRoute>[
  MaterialRoute(
    path: '/food-categories',
    page: FoodCategoriesView,
  ),
  MaterialRoute(
    path: '/food-categories/:foodCategoryId',
    page: FoodCategoryDetailView,
  ),
];
