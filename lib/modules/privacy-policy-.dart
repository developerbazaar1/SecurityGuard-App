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
        // privacypolicybXo (605:1611)
        width: double.infinity,
        height: 1057*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame63va5 (605:1612)
              left: 20*fem,
              top: 110*fem,
              child: Container(
                width: 353*fem,
                height: 915*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame522d7 (605:1613)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 138*fem, 0*fem),
                      width: double.infinity,
                      height: 43*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff000000)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // fluentiosarrow24filledvTb (605:1614)
                            margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 14*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 30*fem,
                                height: 30*fem,
                                child: Image.asset(
                                  'assets/modules/images/fluent-ios-arrow-24-filled-mQd.png',
                                  width: 30*fem,
                                  height: 30*fem,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // privacypolicyQdf (605:1617)
                            'Privacy Policy ',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame31wNh (605:1618)
                      margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 1.5*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 25*fem, 13*fem),
                      width: double.infinity,
                      height: 852*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            offset: Offset(0*fem, 0*fem),
                            blurRadius: 1*fem,
                          ),
                        ],
                      ),
                      child: Center(
                        // introductionloremipsumdolorsit (605:1620)
                        child: SizedBox(
                          child: Container(
                            constraints: BoxConstraints (
                              maxWidth: 300*fem,
                            ),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3640000025*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Introduction:\n\n',
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Lorem ipsum dolor sit amet consectetur. Tincidunt mi justo eget ac amet lacus dolor cursus in. Aliquam condimentum consequat ut consectetur. Sapien interdum pulvinar enim tincidunt sit. Ut laoreet amet nec elementum vel proin facilisi pellentesque. Duis sit sit turpis ornare euismod elementum leo sapien. Et risus tempor eget donec. Arcu commodo fringilla facilisi nunc egestas. Leo ut posuere mauris amet amet nibh fames posuere. Amet nec sociis ornare commodo nascetur eu vitae proin. Mauris neque enim elementum vel nullam nunc laoreet elementum.\n\n',
                                    style: SafeGoogleFont (
                                      'Noto Sans',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Managing Your Information:\n\n',
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Lorem ipsum dolor sit amet consectetur. Tincidunt mi justo eget ac amet lacus dolor cursus in. Aliquam condimentum consequat ut consectetur. Sapien interdum pulvinar enim tincidunt sit. Ut laoreet amet nec elementum vel proin facilisi pellentesque. Duis sit sit turpis ornare euismod elementum leo sapien. Et risus tempor eget donec. Arcu commodo fringilla facilisi nunc egestas. Leo ut posuere mauris amet amet nibh fames posuere. Amet nec sociis ornare commodo nascetur eu vitae proin. Mauris neque enim elementum vel nullam nunc laoreet elementum.',
                                    style: SafeGoogleFont (
                                      'Noto Sans',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group77TbF (605:1621)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 393*fem,
                height: 100*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group16aQy (605:1622)
                      padding: EdgeInsets.fromLTRB(28*fem, 17*fem, 28.11*fem, 18*fem),
                      width: double.infinity,
                      height: 50*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                      child: Container(
                        // group15hVb (605:1624)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // timeFX7 (605:1625)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                              width: 39.77*fem,
                              height: 15*fem,
                              child: Image.asset(
                                'assets/modules/images/time-hGd.png',
                                width: 39.77*fem,
                                height: 15*fem,
                              ),
                            ),
                            Container(
                              // toprightmkM (605:1626)
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // cellularconnectionKG5 (605:1636)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.46*fem, 0*fem),
                                    width: 22*fem,
                                    height: 13*fem,
                                    child: Image.asset(
                                      'assets/modules/images/cellular-connection-Avd.png',
                                      width: 22*fem,
                                      height: 13*fem,
                                    ),
                                  ),
                                  Container(
                                    // wifi1ub (605:1631)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.44*fem, 0*fem),
                                    width: 21.21*fem,
                                    height: 15*fem,
                                    child: Image.asset(
                                      'assets/modules/images/wifi-Fey.png',
                                      width: 21.21*fem,
                                      height: 15*fem,
                                    ),
                                  ),
                                  Container(
                                    // batteryjKo (605:1627)
                                    width: 30*fem,
                                    height: 15*fem,
                                    child: Image.asset(
                                      'assets/modules/images/battery-uqK.png',
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
                      // frame16rfK (605:1641)
                      padding: EdgeInsets.fromLTRB(30*fem, 5*fem, 30*fem, 5*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff3a3a3a)),
                        color: Color(0xffffffff),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // raynetfinallogo1aLR (605:1642)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                            width: 52.35*fem,
                            height: 40*fem,
                            child: Image.asset(
                              'assets/modules/images/raynet-final-logo-1-AHX.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // mingcutenotificationlineVCV (605:1643)
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/modules/images/notification.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame641Rj (605:1647)
              left: 0*fem,
              top: 50*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(30*fem, 5*fem, 30*fem, 5*fem),
                width: 393*fem,
                height: 50*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff3a3a3a)),
                  color: Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // raynetfinallogo1VLu (605:1648)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250.65*fem, 0*fem),
                      width: 52.35*fem,
                      height: 40*fem,
                      child: Image.asset(
                        'assets/modules/images/raynet-final-logo-1-Ku3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // mingcutenotificationlinecgR (605:1649)
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/modules/images/mingcute-notification-line-WA5.png',
                        width: 30*fem,
                        height: 30*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}