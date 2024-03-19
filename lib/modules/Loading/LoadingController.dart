import 'package:get/get.dart';


class LoadingController extends GetxController{
  var isLoading = true.obs;

  Future<void> loadInitialData() async {


    await Future.delayed(Duration(seconds: 3)); // Simulate loading for 2 seconds

    // Once the tasks are done, set isLoading to false to indicate that loading is complete.
    isLoading(false);
  }
}