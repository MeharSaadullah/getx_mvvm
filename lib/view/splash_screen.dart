import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/assets/images_assets.dart';
import 'package:getx_mvvm/resources/colors/appColors.dart';
import 'package:getx_mvvm/resources/components/internet_exceptions.dart';
import 'package:getx_mvvm/utiles/utiles.dart';
import 'package:getx_mvvm/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices SplashScreen =
      SplashServices(); // here we calln splash services class
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashScreen.islogin();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolors.primaryColor,
        body: Center(
            child: Text(
          'welcome_message'.tr,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ))
        // Image(image: AssetImage(ImagesAssets.splashscreen)),
        //InternetExceptions(onpress: (){}),

        // floatingActionButton: FloatingActionButton(onPressed: () {
        //   Utiles.toastMessage('HELLO MEHAR SAADULLAH');
        // }),
        );
  }
}
