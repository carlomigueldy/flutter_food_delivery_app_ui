import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'foods_viewmodel.dart';

class FoodsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FoodsViewModel>.nonReactive(
      viewModelBuilder: () => FoodsViewModel(),
      builder: (
        BuildContext context,
        FoodsViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'FoodsView',
            ),
          ),
        );
      },
    );
  }
}
