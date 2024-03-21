import 'package:get/get.dart';

import '../controller/termConditonController.dart';



class TermConditionBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TermConditionController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
