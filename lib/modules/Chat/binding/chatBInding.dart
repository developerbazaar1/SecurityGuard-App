import 'package:get/get.dart';
import 'package:myapp/modules/homePage/view/home-page.dart';

import '../view/chats.dart';





class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Chat());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}
