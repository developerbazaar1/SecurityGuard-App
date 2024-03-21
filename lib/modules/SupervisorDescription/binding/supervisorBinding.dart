import 'package:get/get.dart';

import '../controller/supervisiorController.dart';




class SupervisiorBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SuperVisiorController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
