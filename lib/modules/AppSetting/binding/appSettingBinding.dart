import 'package:get/get.dart';
import 'package:myapp/modules/AppSetting/controller/AppSettingController.dart';







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
