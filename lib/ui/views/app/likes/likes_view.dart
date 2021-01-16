import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'likes_viewmodel.dart';

class LikesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LikesViewModel>.nonReactive(
      viewModelBuilder: () => LikesViewModel(),
      builder: (
        BuildContext context,
        LikesViewModel model,
        Widget child,
      ) {
        return Center(
          child: Text(
            'LikesView',
          ),
        );
      },
    );
  }
}
