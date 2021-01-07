import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'shopping_cart_viewmodel.dart';

class ShoppingCartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShoppingCartViewModel>.nonReactive(
      viewModelBuilder: () => ShoppingCartViewModel(),
      builder: (
        BuildContext context,
        ShoppingCartViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'ShoppingCartView',
            ),
          ),
        );
      },
    );
  }
}
