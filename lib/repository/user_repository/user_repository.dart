import 'dart:ui';

import 'package:getx_mvvm/data/network/network_api_services.dart';
import 'package:getx_mvvm/models/user/user_list_model.dart';
import 'package:getx_mvvm/resources/app_url/appurl.dart';

class UserRepository {
// here we call that networkapi service we use all of those function here by calling that
  final _apiService = NetworkApiServices();

  Future<UserListModal> userlistApi() async {
    dynamic response = await _apiService.getApi(AppUrl
        .userlistApi); // here 'getapi ' is the function which we access from networkbaseapi
    return UserListModal.fromJson(response);
  }
}
