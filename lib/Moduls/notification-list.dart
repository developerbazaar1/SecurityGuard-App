import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import '../Modals/DashedBorderPainter.dart';
import '../Modals/constants.dart';

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),
      body: Container(
        // notificationlistmNq (293:1921)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Container(
              // frame75pvm (293:1922)
              margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 19*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame52Ajj (293:1923)
                    margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                    width: double.infinity,
                    height: 43*fem,
                    decoration: BoxDecoration (

                    ),
                    child: Center(
                      child: Text(
                        // notificationXTo (293:1927)
                        'Notification',
                        style: SafeGoogleFont (
                          'Noto Sans',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.3625*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),

                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: MediaQuery.of(context).size.width,
                      child: CustomPaint(
                        painter: DashedBorderPainter(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    // frame2899Fub (303:2107)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame63bTf (293:2096)
                          padding: EdgeInsets.fromLTRB(6*fem, 10*fem, 6*fem, 10*fem),
                          width: double.infinity,
                          height: 70*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffdff4ff),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Container(
                            // frame65KuT (293:2104)
                            width: 293*fem,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // ellipse1HLV (293:2105)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 50*fem,
                                  height: 50*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(25*fem),
                                    image: DecorationImage (
                                      image: AssetImage (
                                        'assets/page-1/images/ellipse-1-bg-Tgd.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // stefanjrichardsconfirmsyourboo (293:2106)
                                  constraints: BoxConstraints (
                                    maxWidth: 233*fem,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Stefan J. Richards ',
                                        ),
                                        TextSpan(
                                          text: 'confirms your booking request',
                                          style: SafeGoogleFont (
                                            'Nunito',
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
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                        Container(
                          // frame663cV (293:2100)
                          padding: EdgeInsets.fromLTRB(6*fem, 10*fem, 6*fem, 10*fem),
                          width: double.infinity,
                          height: 70*fem,
                          decoration: BoxDecoration (

                          ),
                          child: Container(
                            // frame66kG1 (293:2101)
                            width: 295*fem,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // ellipse2hS9 (293:2102)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 50*fem,
                                  height: 50*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(25*fem),
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/ellipse-2-bg.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // vancedaughertycanceledyourbook (293:2103)
                                  constraints: BoxConstraints (
                                    maxWidth: 235*fem,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Vance Daugherty',
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' ',
                                        ),
                                        TextSpan(
                                          text: 'Canceled your booking request',
                                          style: SafeGoogleFont (
                                            'Nunito',
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
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                        Container(
                          // frame67ePK (303:2119)
                          padding: EdgeInsets.fromLTRB(6*fem, 10*fem, 9*fem, 10*fem),
                          width: double.infinity,
                          height: 70*fem,
                          decoration: BoxDecoration (

                          ),
                          child: Container(
                            // frame66ZmB (303:2120)
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // ellipse16FK (303:2123)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                  width: 50*fem,
                                  height: 50*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(25*fem),
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/ellipse-1-bg-Yem.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // germanbeanconfirmedyourbooking (303:2122)
                                  constraints: BoxConstraints (
                                    maxWidth: 280*fem,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'German Bean ',
                                        ),
                                        TextSpan(
                                          text: 'Confirmed your booking request',
                                          style: SafeGoogleFont (
                                            'Nunito',
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
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                      ],
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

  AppBar Appbar(BuildContext context, double fem) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kAppbarUnderline, // Choose your border color
                    width: 1.0, // Choose the border width
                  ),
                ))),
      ),
      backgroundColor: Colors.white,
      elevation: 8,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Image(
        image: AssetImage('assets/page-2/images/logo.png'),
        height: 40,
        width: 52.35,
      ),

    );
  }
}