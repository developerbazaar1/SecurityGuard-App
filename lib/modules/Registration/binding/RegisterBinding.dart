import 'package:get/get.dart';

import '../controller/controller.dart';
import '../view/registration.dart';





class RegisterationBinding implements Bindings {
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
