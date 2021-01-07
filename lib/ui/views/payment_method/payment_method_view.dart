import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'payment_method_viewmodel.dart';

class PaymentMethodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentMethodViewModel>.nonReactive(
      viewModelBuilder: () => PaymentMethodViewModel(),
      builder: (
        BuildContext context,
        PaymentMethodViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'PaymentMethodView',
            ),
          ),
        );
      },
    );
  }
}
