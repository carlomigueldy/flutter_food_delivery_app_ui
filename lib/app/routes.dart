import 'package:auto_route/auto_route_annotations.dart';
import 'package:stacked_architecture_starter/ui/views/orders/orders_routes.dart';

// Views
import '../ui/views/home/home_view.dart';
import '../ui/views/main/main_view.dart';
import '../ui/views/splash/splash_view.dart';
import '../ui/views/account_settings/account_settings_view.dart';
import '../ui/views/food_categories/food_categories_routes.dart';
import '../ui/views/foods/foods_routes.dart';
import '../ui/views/payment_method/payment_method_view.dart';
import '../ui/views/restaurants/restaurants_routes.dart';
import '../ui/views/saved/saved_view.dart';
import '../ui/views/search/search_view.dart';
import '../ui/views/shopping_cart/shopping_cart_view.dart';

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
    MaterialRoute(
      path: '/payment-method',
      page: PaymentMethodView,
    ),
    MaterialRoute(
      path: '/saved',
      page: SavedView,
    ),
    MaterialRoute(
      path: '/account-settings',
      page: AccountSettingsView,
    ),
    MaterialRoute(
      path: '/search',
      page: SearchView,
    ),
    MaterialRoute(
      path: '/shopping-cart',
      page: ShoppingCartView,
    ),
    ...foodsRoutes,
    ...foodCategoriesRoutes,
    ...restaurantsRoutes,
    ...ordersRoutes,
  ],
)
class $Router {}
