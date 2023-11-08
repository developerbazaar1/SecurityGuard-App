import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    // Delay for 2 seconds and then navigate to the next screen
    Future.delayed(Duration(seconds: 2), () {
      Get.offNamed('/main'); // Replace '/main' with your destination route
    });
  }
}
