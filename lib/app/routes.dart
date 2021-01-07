import 'package:auto_route/auto_route_annotations.dart';
import 'package:stacked_architecture_starter/ui/views/food_categories/food_categories_routes.dart';
import 'package:stacked_architecture_starter/ui/views/foods/foods_routes.dart';
import 'package:stacked_architecture_starter/ui/views/restaurants/restaurants_routes.dart';

// Views
import '../ui/views/home/home_view.dart';
import '../ui/views/main/main_view.dart';
import '../ui/views/splash/splash_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(
      path: '/',
      page: SplashView,
      initial: true,
    ),
    MaterialRoute(
      path: '/main',
      page: MainView,
    ),
    MaterialRoute(
      path: '/home',
      page: HomeView,
    ),
    ...foodsRoutes,
    ...foodCategoriesRoutes,
    ...restaurantsRoutes,
  ],
)
class $Router {}
