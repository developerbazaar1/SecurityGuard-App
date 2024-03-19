import 'package:get/get.dart';
import 'package:myapp/modules/homePage/view/home-page.dart';





class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Home());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
