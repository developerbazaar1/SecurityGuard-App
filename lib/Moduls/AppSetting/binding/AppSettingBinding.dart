
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/AppSettingController.dart';


class AppSettingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppSettingController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
