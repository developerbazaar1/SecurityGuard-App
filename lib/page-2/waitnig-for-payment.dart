import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: TextButton(
        // waitnigforpaymentF8m (605:928)
        onPressed: () {},
        style: TextButton.styleFrom (
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 225*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffdff4ff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // group16KuK (605:933)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 174*fem),
                padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
                width: double.infinity,
                height: 50*fem,
                decoration: BoxDecoration (
                  color: Color(0xffdff4ff),
                ),
                child: Container(
                  // group15RBf (605:935)
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // timeNch (605:936)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                        width: 39.77*fem,
                        height: 15*fem,
                        child: Image.asset(
                          'assets/page-2/images/time-Hg5.png',
                          width: 39.77*fem,
                          height: 15*fem,
                        ),
                      ),
                      Container(
                        // toprighthey (605:937)
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // cellularconnectionqFP (605:947)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                              width: 22*fem,
                              height: 13*fem,
                              child: Image.asset(
                                'assets/page-2/images/cellular-connection-YEd.png',
                                width: 22*fem,
                                height: 13*fem,
                              ),
                            ),
                            Container(
                              // wifix57 (605:942)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                              width: 21.21*fem,
                              height: 15*fem,
                              child: Image.asset(
                                'assets/page-2/images/wifi-o85.png',
                                width: 21.21*fem,
                                height: 15*fem,
                              ),
                            ),
                            Container(
                              // batterygG1 (605:938)
                              width: 30*fem,
                              height: 15*fem,
                              child: Image.asset(
                                'assets/page-2/images/battery-pg9.png',
                                width: 30*fem,
                                height: 15*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // frame36ByT (605:929)
                margin: EdgeInsets.fromLTRB(47*fem, 0*fem, 46*fem, 0*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // dazzleonlinebanking17cD (605:930)
                      width: 300*fem,
                      height: 300*fem,
                      child: Image.asset(
                        'assets/page-2/images/dazzle-online-banking-1-pxh.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10*fem,
                    ),
                    Container(
                      // paymentdoneT3o (605:931)
                      margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'Payment Done!',
                        style: SafeGoogleFont (
                          'Noto Sans',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.3625*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10*fem,
                    ),
                    Container(
                      // paymentconfirmationawaitedfrom (605:932)
                      constraints: BoxConstraints (
                        maxWidth: 300*fem,
                      ),
                      child: Text(
                        'Payment Confirmation Awaited from Client\'s End',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Nunito',
                          fontSize: 18*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}