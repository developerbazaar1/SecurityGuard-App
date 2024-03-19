import 'package:get/get.dart';

import '../controller/HomeScreenController.dart';



class HomeScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
