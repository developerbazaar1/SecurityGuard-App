import 'package:get/get.dart';

import '../controller/privatePolicyController.dart';


class PrivacyPolicyBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(PrivatePolicyController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
