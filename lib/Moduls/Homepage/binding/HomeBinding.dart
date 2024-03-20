import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/HomePageController.dart';


class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}