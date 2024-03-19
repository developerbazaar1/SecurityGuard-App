import 'package:get/get.dart';

import '../view/LoginScreen.dart';



class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginScreen());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
