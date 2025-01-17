import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utiles/utiles.dart';
import 'package:getx_mvvm/view_models/controller/login/login_view_modal.dart';

class InputPasswordWidget extends StatelessWidget {
  InputPasswordWidget({Key? key}) : super(key: key);

  final loginVM = Get.put(LoginViewModal());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.passwordController.value,
      focusNode: loginVM.passwordFocusNode.value,
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          Utiles.snackBar('Password', 'Enter password');
        }
      },
      onFieldSubmitted: (value) {},
      decoration: InputDecoration(
          hintText: 'password_hint'.tr, border: OutlineInputBorder()),
    );
  }
}
