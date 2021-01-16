import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'add_photo_viewmodel.dart';

class AddPhotoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddPhotoViewModel>.nonReactive(
      viewModelBuilder: () => AddPhotoViewModel(),
      builder: (
        BuildContext context,
        AddPhotoViewModel model,
        Widget child,
      ) {
        return Center(
          child: Text(
            'AddPhotoView',
          ),
        );
      },
    );
  }
}
