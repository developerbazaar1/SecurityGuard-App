import 'package:get/get.dart';

import '../controller/forgetController.dart';





class ForgetBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ForgetController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
