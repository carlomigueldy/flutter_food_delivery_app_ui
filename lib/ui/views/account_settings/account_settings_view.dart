import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'account_settings_viewmodel.dart';

class AccountSettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AccountSettingsViewModel>.nonReactive(
      viewModelBuilder: () => AccountSettingsViewModel(),
      builder: (
        BuildContext context,
        AccountSettingsViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'AccountSettingsView',
            ),
          ),
        );
      },
    );
  }
}
