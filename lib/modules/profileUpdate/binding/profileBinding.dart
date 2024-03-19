import 'package:get/get.dart';
import 'package:myapp/modules/profileUpdate/controller/updateProfileController.dart';







class UpdateProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UpdateProfileController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
