import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'food_categories_viewmodel.dart';

class FoodCategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FoodCategoriesViewModel>.nonReactive(
      viewModelBuilder: () => FoodCategoriesViewModel(),
      builder: (
        BuildContext context,
        FoodCategoriesViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'FoodCategoriesView',
            ),
          ),
        );
      },
    );
  }
}
