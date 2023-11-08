import 'package:get/get.dart';

import 'SplashScreenController.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
