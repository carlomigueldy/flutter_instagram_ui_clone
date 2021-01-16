import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.nonReactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (
        BuildContext context,
        ProfileViewModel model,
        Widget child,
      ) {
        return Center(
          child: Text(
            'ProfileView',
          ),
        );
      },
    );
  }
}
