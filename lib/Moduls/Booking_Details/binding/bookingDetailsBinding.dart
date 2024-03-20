import 'package:get/get.dart';

import '../controller/bookingDetailsController.dart';

class BookingDetaialsBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(BookingDetailsController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
