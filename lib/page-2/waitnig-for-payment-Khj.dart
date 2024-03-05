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
      child: Container(
        // waitnigforpaymentejs (605:952)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 203.43*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffdff4ff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group16MPP (605:959)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 153*fem),
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffdff4ff),
              ),
              child: Container(
                // group154ob (605:961)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timeRe9 (605:962)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/page-2/images/time-SSm.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // toprightXhB (605:963)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnectiontGq (605:973)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/page-2/images/cellular-connection-ctq.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wifiz4y (605:968)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/wifi-yWH.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // battery7fP (605:964)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/battery-q5K.png',
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
              // frame363ow (605:953)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // dazzlecustomercare21Ey (707:125)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                    width: 396*fem,
                    height: 229.57*fem,
                    child: Image.asset(
                      'assets/page-2/images/dazzle-customer-care-2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // paymentdonev73 (605:955)
                    margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 10*fem),
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
                  Container(
                    // paymenthasbeensuccessfullyproc (605:956)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                    constraints: BoxConstraints (
                      maxWidth: 328*fem,
                    ),
                    child: Text(
                      'Payment has been successfully processed from the client\'s side, and we are now ready to provide our security services to them.',
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
                  Container(
                    // frame32Vxm (605:957)
                    margin: EdgeInsets.fromLTRB(16.5*fem, 0*fem, 16.5*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 53*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff000000),
                          borderRadius: BorderRadius.circular(10*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Chat With Client',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.3625*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
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