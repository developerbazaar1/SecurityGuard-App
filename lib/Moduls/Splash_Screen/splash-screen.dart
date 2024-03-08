import 'package:flutter/material.dart';
import 'package:myapp/Modals/constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
