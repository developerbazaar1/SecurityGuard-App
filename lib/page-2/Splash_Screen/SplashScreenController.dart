import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    // Delay for 2 seconds and then navigate to the next screen
    Future.delayed(Duration(seconds: 2), () {
      Get.offNamed('/main'); // Replace '/main' with your destination route
    });
  }
  @override
  void onInit() {
    _getKey();
    super.onInit();
  }
  void _getKey() async {
    print('running');
    final prefs = await SharedPreferences.getInstance();
    final key = prefs.get('token');

      globalusertoken = key;

    print('YOUR KEY - "$key"');
  }
}
