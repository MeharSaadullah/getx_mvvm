import 'dart:ui';

import 'package:getx_mvvm/data/network/network_api_services.dart';
import 'package:getx_mvvm/resources/app_url/appurl.dart';

class LoginRepository {
// here we call that networkapi service we use all of those function here by calling that
  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = await _apiService.postApi(
        data,
        AppUrl
            .loginApi); // here 'postapi ' is the function which we access from networkbaseapi
    return response;
  }
}
