import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:myapp/app/theme/constant/constants.dart';
import 'package:share_plus/share_plus.dart';

import '../../app/theme/common_method/common_method.dart';

class HomePageController extends GetxController {
  RxDouble size = 200.0.obs;
  RxDouble Fontsize = 24.0.obs;
  RxDouble buttonWidth = 150.0.obs;
  RxBool srink = false.obs;
  RxInt value = 0.obs;
  Rx<Color> buttonColor = Color(0xff000000).obs;
  Rx<Color> textColor = Color(0xffffffff).obs;
  RxString buttonText = "Go".obs;
  RxString text =
      "Please click the 'GO' button to access our online platform.".obs;
 void clickOnShareButton() async {
    CM.unFocsKeyBoard();

    Share.share(
      'Check out this awesome content!',
      subject: 'Subject Here',
      sharePositionOrigin: Rect.fromLTRB(0, 0, 10, 10),
    );

  }

  void updateSize() {
    srink.value = true;

    buttonText.value = srink.value ? "You're Online" : "Go";
    text.value = srink.value
        ? "You will receive a notification when someone hires your security services."
        : "Please click the 'GO' button to access our online platform.";

    value.value++;
    print(value.value);
  }
}
