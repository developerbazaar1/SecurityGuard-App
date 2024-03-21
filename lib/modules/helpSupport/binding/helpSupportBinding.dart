import 'package:get/get.dart';

import '../controller/helpSupportController.dart';


class HelpSupportBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HelpSupportController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
