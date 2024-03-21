import 'package:get/get.dart';

import '../controller/securityController.dart';



class SecurityGuardBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SecurityGuardController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
