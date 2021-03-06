import 'package:stacked/stacked.dart';

import '../../../app/locator.dart';
import '../../../models/user.dart';
import '../../../services/api/user_service.dart';

enum MenuType {
  LOGIN,
  REGISTER,
}

class AppViewModel extends IndexTrackingViewModel {
  final UserService _userService = locator<UserService>();

  MenuType _menuType;
  MenuType get menuType => _menuType;

  List<User> get users => _userService.users;

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  selectMenu({MenuType menuType}) {
    _menuType = menuType;
    notifyListeners();
  }

  setTabIndex({int index}) {
    _currentIndex = index;
    notifyListeners();
  }
}
