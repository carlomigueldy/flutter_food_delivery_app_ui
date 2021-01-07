import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'food_detail_viewmodel.dart';

class FoodDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FoodDetailViewModel>.nonReactive(
      viewModelBuilder: () => FoodDetailViewModel(),
      builder: (
        BuildContext context,
        FoodDetailViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'FoodDetailView',
            ),
          ),
        );
      },
    );
  }
}
