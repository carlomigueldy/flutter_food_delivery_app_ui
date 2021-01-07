import 'package:auto_route/auto_route_annotations.dart';
import 'package:stacked_architecture_starter/ui/views/restaurants/_restaurantId/restaurant_detail_view.dart';
import 'package:stacked_architecture_starter/ui/views/restaurants/restaurants_view.dart';

const List<AutoRoute<dynamic>> restaurantsRoutes = <AutoRoute>[
  MaterialRoute(
    path: '/restaurants',
    page: RestaurantsView,
  ),
  MaterialRoute(
    path: '/restaurants/:restaurantId',
    page: RestaurantDetailView,
  ),
];
