import 'package:auto_route/auto_route_annotations.dart';
import 'package:stacked_architecture_starter/ui/views/foods/_foodId/food_detail_view.dart';
import 'package:stacked_architecture_starter/ui/views/foods/foods_view.dart';

const List<AutoRoute<dynamic>> foodsRoutes = <AutoRoute>[
  MaterialRoute(
    path: '/foods',
    page: FoodsView,
  ),
  MaterialRoute(
    path: '/foods/:foodId',
    page: FoodDetailView,
  ),
];
