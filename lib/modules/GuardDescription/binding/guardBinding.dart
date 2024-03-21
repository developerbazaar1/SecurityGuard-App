import 'package:get/get.dart';

import '../controller/guardController.dart';



class GuardBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(GuardController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
