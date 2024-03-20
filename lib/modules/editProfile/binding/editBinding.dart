import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../../Booking/controller/bookingController.dart';
import '../controller/EditProfileController.dart';


class EditProfileBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ProfileImageController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }

}