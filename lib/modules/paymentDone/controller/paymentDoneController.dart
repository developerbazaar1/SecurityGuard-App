import 'package:get/get.dart';

import '../binding/paymentDoneBinding.dart';




class PaymentDoneBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(PaymentDoneController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
