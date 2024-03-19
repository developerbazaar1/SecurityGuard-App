import 'package:get/get.dart';

import '../controller/chatController.dart';






class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ChatController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
