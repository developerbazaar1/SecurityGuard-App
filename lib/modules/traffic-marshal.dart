import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/constants.dart';
import '../core/utils/utils.dart';

class SuprevisorInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),
      body: Container(
        // trafficmarshalHz1 (405:1128)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              // frame63KzZ (405:1129)
              margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 6.5*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupikjxTL5 (TsksLVorxPoW7GZDnqiKjX)
                    padding: EdgeInsets.fromLTRB(13.5*fem, 0*fem, 13.5*fem, 21*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame52xXj (405:1130)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem,0*fem, 0*fem),
                          width: double.infinity,
                          height: 43*fem,
                          decoration: BoxDecoration (

                          ),
                          child: Center(
                            child: Text(
                              // siadoorsupervisorsogm (405:1134)
                              'SIA Door Supervisors',
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
                          // sialicencedprimarilyworkingonc (405:1135)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                          constraints: BoxConstraints (
                            maxWidth: 348*fem,
                          ),
                          child: Text(
                            'SIA licenced primarily working on clubs and pubs, commercial venues and office buildings or any facilities with large guest counts. The current recommendation is that there should be one Supervisor for every 100 guests.',
                            style: SafeGoogleFont (
                              'Noto Sans',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // component6YXs (405:1136)
                    padding: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame50Efb (405:1137)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // photosktq (405:1138)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Photos',
                                  style: SafeGoogleFont (
                                    'Noto Sans',
                                    fontSize: 22*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff005271),
                                  ),
                                ),
                              ),
                              Container(
                                // viewmoreFah (405:1139)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    'View More',
                                    style: SafeGoogleFont (
                                      'Noto Sans',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame47BUM (405:1140)
                          padding: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                          width: double.infinity,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle19JJ5 (405:1141)
                                  width: 110*fem,
                                  height: 100*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(2.5*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-19-mTP.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15*fem,
                                ),
                                Container(
                                  // rectangle20oVj (405:1142)
                                  width: 110*fem,
                                  height: 100*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(2.5*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-20-xtH.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15*fem,
                                ),
                                Container(
                                  // rectangle21XwX (405:1143)
                                  width: 110*fem,
                                  height: 100*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(2.5*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-21-z8y.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15*fem,
                                ),
                                Container(
                                  // rectangle22qxD (405:1144)
                                  width: 110*fem,
                                  height: 100*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(2.5*fem),
                                    color: Color(0xffd9d9d9),
                                  ),
                                ),
                                SizedBox(
                                  width: 15*fem,
                                ),
                                Container(
                                  // rectangle23YLq (405:1145)
                                  width: 110*fem,
                                  height: 100*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(2.5*fem),
                                    color: Color(0xffd9d9d9),
                                  ),
                                ),
                                SizedBox(
                                  width: 15*fem,
                                ),
                                Container(
                                  // rectangle2432h (405:1146)
                                  width: 110*fem,
                                  height: 100*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(2.5*fem),
                                    color: Color(0xffd9d9d9),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
                    color: ThemeColorAppbarUnderline, // Choose your border color
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
        image: AssetImage('assets/images/logo.png'),
        height: 40,
        width: 52.35,
      ),
      actions: [
        Image(
          image: AssetImage('assets/images/notification.png'),
          height: 30,
          width: 30,
        ),
        SizedBox(
          width: 30 * fem,
        ),
      ],
    );
  }
}