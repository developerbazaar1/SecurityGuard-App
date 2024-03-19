import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class BookingDetailsController extends GetxController {
  var selectedValue;
  RxString selectedJob = ''.obs;

    RxDouble rating = 0.0.obs;
  RxList Items = [
    'Job Not Started',
    'Job In Progress',
    'Job Done'
  ].obs;
}
