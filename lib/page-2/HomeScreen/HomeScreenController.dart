import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  RxInt currentIndex = 0.obs;
  int  onItemTapped(int index) {

      currentIndex.value = index;
      return currentIndex.value;

  }
}