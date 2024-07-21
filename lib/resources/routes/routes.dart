import 'package:get/route_manager.dart';
import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/view/LogIn_view.dart';
import 'package:getx_mvvm/view/home/home_view.dart';
import 'package:getx_mvvm/view/splash_screen.dart';

class AppRoutes {
  static Approutes() => [
        GetPage(
            name: RoutesName
                .SplashScreen, // here we call that routes name from routes_name.dart
            page: () => SplashScreen(),
            transitionDuration: Duration(microseconds: 250),
            transition: Transition.leftToRight),
        GetPage(
            name: RoutesName
                .LogInView, // here we call that routes name from routes_name.dart
            page: () => LoginView(),
            transitionDuration: Duration(microseconds: 250),
            transition: Transition.leftToRight),
        GetPage(
            name: RoutesName
                .HomeView, // here we call that routes name from routes_name.dart
            page: () => HomeView(),
            transitionDuration: Duration(microseconds: 250),
            transition: Transition.leftToRight)
      ];
}
