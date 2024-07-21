import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/route_manager.dart';
import 'package:getx_mvvm/resources/colors/appColors.dart';

class Utiles {
  static void fieldFocousChange(
      BuildContext context, FocusNode curent, FocusNode nextfocous) {
    curent.unfocus();
    FocusScope.of(context).requestFocus(nextfocous);
    // this is to change the focus on the text foam field
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: Appcolors.blackColor,
        gravity: ToastGravity.BOTTOM);
  }

  static snackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
    );
  }
}
