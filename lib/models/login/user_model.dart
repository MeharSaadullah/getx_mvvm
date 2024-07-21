// create this by running the link on postmen and getvtoken from their and convrt it into json to dart
class UserModal {
  String? token;
  bool? isLogin;

  UserModal({this.token, required this.isLogin});

  UserModal.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    isLogin = json['isLogin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['isLogin'] = this.isLogin;
    return data;
  }
}
