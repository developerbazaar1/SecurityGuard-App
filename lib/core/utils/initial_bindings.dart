import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:myapp/core/utils/pref_utils.dart';

import '../network/network_info.dart';


class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());

    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
