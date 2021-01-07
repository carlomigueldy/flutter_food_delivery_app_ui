import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'food_category_detail_viewmodel.dart';

class FoodCategoryDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FoodCategoryDetailViewModel>.nonReactive(
      viewModelBuilder: () => FoodCategoryDetailViewModel(),
      builder: (
        BuildContext context,
        FoodCategoryDetailViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'FoodCategoryDetailView',
            ),
          ),
        );
      },
    );
  }
}
