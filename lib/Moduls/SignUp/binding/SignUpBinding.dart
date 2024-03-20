
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/SignUpController.dart';

class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RegistrationController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
