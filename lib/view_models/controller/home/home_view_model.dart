import 'package:get/get.dart';
import 'package:getx_mvvm/data/response/status.dart';
import 'package:getx_mvvm/models/user/user_list_model.dart';

import 'package:getx_mvvm/repository/user_repository/user_repository.dart';

class HomeController extends GetxController {
  final _api = UserRepository();

  final rxRequestStatus = Status.Loading.obs;
  final userList = UserListModal().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(UserListModal _value) => userList.value = _value;
  void setError(String _value) => error.value = _value;

  void userListApi() {
    //  setRxRequestStatus(Status.LOADING);

    _api.userlistApi().then((value) {
      setRxRequestStatus(Status.Complete);
      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.Error);
    });
  }

  void refreshApi() {
    setRxRequestStatus(Status.Loading);

    _api.userlistApi().then((value) {
      setRxRequestStatus(Status.Complete);
      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.Error);
    });
  }
}
