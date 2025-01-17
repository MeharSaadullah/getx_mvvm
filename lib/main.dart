import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_mvvm/resources/getx_localization/languages.dart';
import 'package:getx_mvvm/resources/routes/routes.dart';
import 'package:getx_mvvm/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: SplashScreen(),
      getPages: AppRoutes.Approutes(),
    );
  }
}
