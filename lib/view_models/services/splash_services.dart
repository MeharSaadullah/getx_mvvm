import 'dart:async';

import 'package:get/route_manager.dart';
import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/view/LogIn_view.dart';
import 'package:getx_mvvm/view_models/user_perfrence/user_prefrence_view_modal.dart';
import 'package:shared_preferences/shared_preferences.dart';

// here we create splah service and we call this class in splashscreen.dart alao call that functionislogin
class SplashServices {
  UserPrefrence userPreference = UserPrefrence();
  void islogin() {
    // Timer(Duration(seconds: 4), () => Get.toNamed(RoutesName.LogInView));
    userPreference.getUser().then((value) {
      print(value.token);
      print(value.isLogin);

      if (value.isLogin == false || value.isLogin.toString() == 'null') {
        Timer(const Duration(seconds: 3),
            () => Get.toNamed(RoutesName.LogInView));
      } else {
        Timer(
            const Duration(seconds: 3), () => Get.toNamed(RoutesName.HomeView));
      }
    });
  }
}
