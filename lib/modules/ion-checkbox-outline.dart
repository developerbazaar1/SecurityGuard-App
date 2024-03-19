import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../core/utils/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 384;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // ioncheckboxoutlineHB7 (605:1882)
        width: double.infinity,
        height: 384*fem,
        child: Image.asset(
          'assets/modules/images/ion-checkbox-outline.png',
          width: 384*fem,
          height: 384*fem,
        ),
      ),
          );
  }
}