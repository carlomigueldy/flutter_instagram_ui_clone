import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'explore_viewmodel.dart';

class ExploreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExploreViewModel>.nonReactive(
      viewModelBuilder: () => ExploreViewModel(),
      builder: (
        BuildContext context,
        ExploreViewModel model,
        Widget child,
      ) {
        return Center(
          child: Text(
            'ExploreView',
          ),
        );
      },
    );
  }
}
