import 'package:get/get.dart';

import '../controller/bookingController.dart';

class BookingBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(bookingController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }

}