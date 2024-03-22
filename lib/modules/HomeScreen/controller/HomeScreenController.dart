import 'package:get/get.dart';
RxInt currentIndex = 0.obs;
class HomeScreenController extends GetxController{

  var argument= Get.arguments;
  @override
  void onInit() {
    print(argument);
    if(argument!=null){


      currentIndex.value = argument;

    }

    super.onInit();
  }
  void  onItemTapped(int index) {

      currentIndex.value = index;


  }
}