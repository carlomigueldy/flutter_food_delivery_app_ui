import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'restaurants_viewmodel.dart';

class RestaurantsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RestaurantsViewModel>.nonReactive(
      viewModelBuilder: () => RestaurantsViewModel(),
      builder: (
        BuildContext context,
        RestaurantsViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'RestaurantsView',
            ),
          ),
        );
      },
    );
  }
}
