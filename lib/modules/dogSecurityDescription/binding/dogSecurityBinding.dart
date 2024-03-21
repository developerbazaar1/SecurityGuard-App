import 'package:get/get.dart';

import '../controller/dogSecurityController.dart';

class DogSecurityBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DogSecurityController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
