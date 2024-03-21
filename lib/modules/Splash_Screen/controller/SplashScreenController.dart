import 'package:get/get.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../main.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    // Delay for 2 seconds and then navigate to the next screen
    Future.delayed(Duration(seconds: 2), () {
      print("here is globle key ${globalusertoken}");
      if(globalusertoken!='' || globalusertoken.isNotEmpty){
        Get.offNamed(AppRoutes.homeScreen);
      }

      else{
      Get.offNamed(AppRoutes.loginScreen);
      }

    });
  }

  void _setKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', key);
    print('set key');
  }

  @override
  void onInit() {


    _getKey();

    super.onInit();
  }
  void _getKey() async {

    final prefs = await SharedPreferences.getInstance();
    final key = prefs.get('token');

      globalusertoken = key.toString();



    print('YOUR KEY - "$globalusertoken"');
  }
}
