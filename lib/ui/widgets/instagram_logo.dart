import 'package:flutter/material.dart';

class InstagramLogo extends StatelessWidget {
  const InstagramLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/logos/instagram-logo.png';

    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
