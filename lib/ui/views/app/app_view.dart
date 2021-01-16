import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui_clone/ui/views/app/add_photo/add_photo_view.dart';
import 'package:flutter_instagram_ui_clone/ui/views/app/likes/likes_view.dart';
import 'package:flutter_instagram_ui_clone/ui/views/app/profile/profile_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

// ViewModel
import 'app_viewmodel.dart' show AppViewModel;
import 'explore/explore_view.dart';
import 'home/home_view.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppViewModel>.reactive(
      viewModelBuilder: () => AppViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: InstagramLogo(),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 8.0),
                  child: Image.asset(
                    'assets/messenger-icon.png',
                    height: 25,
                    width: 25,
                  ),
                ),
              ],
            ),
            bottomNavigationBar: AppBottomNavigationBar(model: model),
            body: SingleChildScrollView(
              child: getViewByIndex(index: model.currentIndex),
            ),
          ),
        );
      },
    );
  }

  Widget getViewByIndex({@required int index}) {
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return ExploreView();
      case 2:
        return AddPhotoView();
      case 3:
        return LikesView();
      case 4:
        return ProfileView();
      default:
        return HomeView();
    }
  }
}

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

class AppBottomNavigationBar extends StatelessWidget {
  final AppViewModel model;

  const AppBottomNavigationBar({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey[800],
      selectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: model.currentIndex,
      onTap: (int index) => model.setTabIndex(index: index),
      items: [
        BottomNavigationBarItem(
          icon: model.currentIndex == 0
              ? Icon(Icons.home)
              : Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: model.currentIndex == 1
              ? Icon(Icons.search)
              : Icon(Icons.search_outlined),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_outlined),
          label: 'Add Photo',
        ),
        BottomNavigationBarItem(
          icon: model.currentIndex == 3
              ? FaIcon(FontAwesomeIcons.solidHeart)
              : FaIcon(FontAwesomeIcons.heart),
          label: 'Likes',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor:
                model.currentIndex == 4 ? Colors.black : Colors.grey[300],
            radius: 15,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/logos/instagram-icon.png'),
              radius: 13,
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
