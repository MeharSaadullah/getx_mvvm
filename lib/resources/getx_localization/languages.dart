import 'package:get/route_manager.dart';
//import 'package:getx_mvvm/resources/getx_localization/languages.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter Email',
          'Internet Excptions':
              "We are enable to show result.\n kindly check your\n internet connection",
          'welcome_message': 'Welcome \n Back',
          'login': 'Login',
          'password_hint': 'Password',
        },
        'ur_Pk': {'email_hint': 'ای میل درج کریں۔'}
      };
}
