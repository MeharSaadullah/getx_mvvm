import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/models/login/user_model.dart';
import 'package:getx_mvvm/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/utiles/utiles.dart';
import 'package:getx_mvvm/view_models/user_perfrence/user_prefrence_view_modal.dart';

class LoginViewModal extends GetxController {
  UserPrefrence userPrefrence = UserPrefrence();
  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loading = false.obs;
  loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api.loginApi(data).then((value) {
      loading.value = false;

      if (value['error'] == 'user not found') {
        Utiles.snackBar('Login', value['error']);
      } else {
        UserModal userModel = UserModal(token: value['token'], isLogin: true);

        userPrefrence.saveUser(userModel).then((value) {
          // releasing resouces because we are not going to use this
          Get.delete<LoginViewModal>();
          Get.toNamed(RoutesName.HomeView)!.then((value) {});
          Utiles.snackBar('Login', 'Login successfully');
        }).onError((error, stackTrace) {});
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utiles.snackBar('Error', error.toString());
    });

    // here loginAppi comesfrom loginrepository which we initilize at top
  }
}
