import 'package:getx_mvvm/data/response/status.dart';

class ApiResponse<T> {   //<T> IS USED FOR DYNAMIC DATA
  Status? status;
  T? data;            // initilize status, data and message
  String? message;

  ApiResponse(this.data, this.message, this.status);

  ApiResponse.loading() : status = Status.Loading;    // loading complete and error get from status.dart
  ApiResponse.completed() : status = Status.Complete;
  ApiResponse.error() : status = Status.Error;

  @override
  String toString() {
    return "Status : $status  \n  Message : $message \n Data : $data";
  }
}
