import 'package:auto_route/auto_route_annotations.dart';

import 'orders_view.dart';
import 'order_detail/order_detail_view.dart';

const List<AutoRoute> ordersRoutes = <AutoRoute>[
  MaterialRoute(
    path: '/orders',
    page: OrdersView,
  ),
  MaterialRoute(
    path: '/orders/:orderId',
    page: OrderDetailView,
  ),
];
