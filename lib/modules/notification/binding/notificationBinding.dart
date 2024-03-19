import 'package:get/get.dart';


import '../controller/notificationController.dart';


class NotificationhBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(NotificaitonController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}