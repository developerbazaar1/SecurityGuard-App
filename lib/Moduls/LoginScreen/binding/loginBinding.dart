import 'package:get/get.dart';
import 'package:myapp/Moduls/LoginScreen/controller/loginController.dart';



class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
