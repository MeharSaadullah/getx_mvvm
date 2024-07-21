import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utiles/utiles.dart';
import 'package:getx_mvvm/view_models/controller/login/login_view_modal.dart';

class InputEmailWidget extends StatelessWidget {
  InputEmailWidget({Key? key}) : super(key: key);

  final loginVM = Get.put(LoginViewModal());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.emailController.value,
      focusNode: loginVM.emailFocusNode.value,
      validator: (value) {
        if (value!.isEmpty) {
          Utiles.snackBar('Email', 'Enter email');
        }
      },
      onFieldSubmitted: (value) {
        Utiles.fieldFocousChange(context, loginVM.emailFocusNode.value,
            loginVM.passwordFocusNode.value);
      },
      decoration: InputDecoration(
          hintText: 'email_hint'.tr, border: OutlineInputBorder()),
    );
  }
}
