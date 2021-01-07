import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'order_detail_viewmodel.dart';

class OrderDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderDetailViewModel>.nonReactive(
      viewModelBuilder: () => OrderDetailViewModel(),
      builder: (
        BuildContext context,
        OrderDetailViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'OrderDetailView',
            ),
          ),
        );
      },
    );
  }
}
