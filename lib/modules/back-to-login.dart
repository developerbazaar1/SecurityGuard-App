import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../core/utils/utils.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // backtologin6Yh (605:395)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 343.5*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0x8cffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/modules/images/rectangle-7-bg-TX7.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group17QZP (605:404)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
              padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Container(
                // group15vGq (605:406)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timeFpu (605:407)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                      width: 39.77*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/modules/images/time-Tcu.png',
                        width: 39.77*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // toprightAS5 (605:408)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cellularconnectionwLM (605:418)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                            width: 22*fem,
                            height: 13*fem,
                            child: Image.asset(
                              'assets/modules/images/cellular-connection-S4Z.png',
                              width: 22*fem,
                              height: 13*fem,
                            ),
                          ),
                          Container(
                            // wificxH (605:413)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                            width: 21.21*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/modules/images/wifi-4dX.png',
                              width: 21.21*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // batterySRX (605:409)
                            width: 30*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/modules/images/battery-MwP.png',
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
              // raynetfinallogo15jP (605:398)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.29*fem, 162.5*fem),
              width: 104.71*fem,
              height: 80*fem,
              child: Image.asset(
                'assets/modules/images/raynet-final-logo-1-8eM.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // frame14vV7 (605:399)
              margin: EdgeInsets.fromLTRB(39*fem, 0*fem, 38*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // checkemailRRs (605:400)
                    margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 0*fem),
                    child: Text(
                      'CHECK EMAIL',
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
                    height: 30*fem,
                  ),
                  Container(
                    // passwordresetrequestreceivedem (605:401)
                    constraints: BoxConstraints (
                      maxWidth: 316*fem,
                    ),
                    child: Text(
                      'Password reset request received. Email sent to your account address.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Nunito',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3625*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30*fem,
                  ),
                  Container(
                    // frame2DFF (605:402)
                    margin: EdgeInsets.fromLTRB(43*fem, 0*fem, 43*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 43*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff016699),
                          borderRadius: BorderRadius.circular(30*fem),
                        ),
                        child: Center(
                          child: Text(
                            'BACK TO LOGIN',
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
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