import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'orders_viewmodel.dart';

class OrdersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersViewModel>.nonReactive(
      viewModelBuilder: () => OrdersViewModel(),
      builder: (
        BuildContext context,
        OrdersViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'OrdersView',
            ),
          ),
        );
      },
    );
  }
}
