import 'package:get/get.dart';
import 'package:myapp/modules/homePage/view/home-page.dart';

import '../controller/bookingDetailsController.dart';







class BookingDetailsBinding implements Bindings {
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