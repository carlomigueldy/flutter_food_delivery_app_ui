import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'restaurant_detail_viewmodel.dart';

class RestaurantDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RestaurantDetailViewModel>.nonReactive(
      viewModelBuilder: () => RestaurantDetailViewModel(),
      builder: (
        BuildContext context,
        RestaurantDetailViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'RestaurantDetailView',
            ),
          ),
        );
      },
    );
  }
}
