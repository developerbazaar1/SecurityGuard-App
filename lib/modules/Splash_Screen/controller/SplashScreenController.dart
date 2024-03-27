import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/data/localStorage/localStoragedata.dart';
import '../../../main.dart';
var globalusertoken;
class SplashController extends GetxController {


  @override



  void onReady() {
    super.onReady();

    Future.delayed(const Duration(seconds: 3), () {

      if ( globalusertoken == null || globalusertoken=='') {

        Get.offNamed(AppRoutes.loginScreen);
      } else {
        Get.offNamed(AppRoutes.homeScreen);
      }
    });
  }



  @override
  void onInit()async {

   globalusertoken = await LocalStorage.getKey();





    super.onInit();
  }


}
