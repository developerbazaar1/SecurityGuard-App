import 'package:flutter/material.dart';
import 'package:myapp/Modals/constants.dart';

import '../../../core/contants/image_constant.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: ThemeColorBackgroundBottomsheet,
      body: Center(
        child: Image(
          image: AssetImage(CI.imgLogo,),
          height: 180*fem,
          width: 235*fem,
        ),
      ),
    );
  }
}
