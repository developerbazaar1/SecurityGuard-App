import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 100;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // component13N57 (605:1909)
        padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff9747ff)),
          borderRadius: BorderRadius.circular(5*fem),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // property1ioncheckboxoutlineT6Z (605:1907)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 20*fem,
                  height: 20*fem,
                  child: Image.asset(
                    'assets/modules/images/property-1ion-checkbox-outline.png',
                    width: 20*fem,
                    height: 20*fem,
                  ),
                ),
              ),
            ),
            TextButton(
              // property1ioncheckboxk5f (605:1908)
              onPressed: () {},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: 20*fem,
                height: 20*fem,
                child: Image.asset(
                  'assets/modules/images/property-1ion-checkbox.png',
                  width: 20*fem,
                  height: 20*fem,
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}