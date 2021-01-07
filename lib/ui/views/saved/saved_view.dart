import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'saved_viewmodel.dart';

class SavedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SavedViewModel>.nonReactive(
      viewModelBuilder: () => SavedViewModel(),
      builder: (
        BuildContext context,
        SavedViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'SavedView',
            ),
          ),
        );
      },
    );
  }
}
