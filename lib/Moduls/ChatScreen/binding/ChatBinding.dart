import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myapp/Moduls/ChatScreen/controller/userChatController.dart';



class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UserChatController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Add dependencies for the main screen, if any
  }
}