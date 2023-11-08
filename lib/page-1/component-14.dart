import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // component14jEZ (394:797)
        padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 20*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff9747ff)),
          borderRadius: BorderRadius.circular(5*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // property1component11zAV (394:796)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 78*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // rectangle33tmf (394:778)
                        width: 195*fem,
                        height: 220*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-33-Bvq.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle35EqX (394:779)
                        width: 195*fem,
                        height: 220*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-35.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle34yo7 (394:780)
                        width: 195*fem,
                        height: 220*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-34.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle36Ldf (394:781)
                        width: 195*fem,
                        height: 220*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-36-mFX.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // property1component12sdb (394:795)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 54*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // rectangle33NKT (394:783)
                        width: 195*fem,
                        height: 220*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-33.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle35uqB (394:784)
                        width: 195*fem,
                        height: 220*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-35-8Y9.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle34U7b (394:785)
                        width: 195*fem,
                        height: 220*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-34-8nM.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // rectangle36E6m (394:786)
                        width: 195*fem,
                        height: 220*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-36.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // property1component13MhB (394:794)
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rectangle33hFF (394:790)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 175*fem, 0*fem),
                    width: 195*fem,
                    height: 220*fem,
                    child: Image.asset(
                      'assets/page-1/images/rectangle-33-7WZ.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // rectangle35Rh3 (394:791)
                    width: 195*fem,
                    height: 220*fem,
                    child: Image.asset(
                      'assets/page-1/images/rectangle-35-QLy.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // rectangle34P85 (394:792)
                    width: 195*fem,
                    height: 220*fem,
                    child: Image.asset(
                      'assets/page-1/images/rectangle-34-qN1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // rectangle36u6R (394:793)
                    width: 195*fem,
                    height: 220*fem,
                    child: Image.asset(
                      'assets/page-1/images/rectangle-36-PAH.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}