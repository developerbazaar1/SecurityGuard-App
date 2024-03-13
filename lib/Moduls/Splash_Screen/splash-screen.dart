import 'package:flutter/material.dart';
import 'package:myapp/app/theme/constant/constants.dart';

import '../../core/Utils/sizeUtils.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeUtils.instance.init(context);
    return Scaffold(
      backgroundColor: kBackgroundBottomsheet,
      body: Center(
        child: Image(
          image: AssetImage('assets/page-2/images/finalImage/logo.png',),
          height: 180,
          width: 235,
        ),
      ),
    );
  }
}
