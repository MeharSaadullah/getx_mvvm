import 'package:get/get.dart';
import 'package:getx_mvvm/models/login/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPrefrence {
  //HERE WE GET FUTURE FUNCTION and pass usermodal which we get from json to dart concert then we get all the data
  // from user modal and here we save on token in shared prefrences
  Future<bool> saveUser(UserModal responseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', responseModel.token.toString());
    sp.setBool('isLogin', responseModel.isLogin!);

    return true;
  }

// here we get that tokem
  Future<UserModal> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString('token');
    bool? isLogin = sp.getBool('isLogin');

    return UserModal(token: token, isLogin: isLogin);
  }

  Future<bool> removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}
