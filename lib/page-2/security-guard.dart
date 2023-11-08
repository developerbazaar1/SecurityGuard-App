import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/utils.dart';

class SecurityGardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),

      body: Container(

        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Container(
              // frame63Cfs (405:1083)
              margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 6.5*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    // autogroup3wazYUq (TskrfBc31oRJ4QPE423waZ)
                    padding: EdgeInsets.fromLTRB(13.5*fem, 0*fem, 13.5*fem, 20*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame523gV (405:1084)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                          width: double.infinity,
                          height: 43*fem,
                          decoration: BoxDecoration (

                          ),
                          child: Center(
                            child: Text(
                              // siasecurityguardseRP (405:1088)
                              'SIA Security Guards',
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
                          // sialicencedguardsworkingoncons (405:1089)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                          constraints: BoxConstraints (
                            maxWidth: 339*fem,
                          ),
                          child: Center(
                            child: Text(
                              'SIA Licenced guards working on construction sites or any other sites without public access.',
                              style: SafeGoogleFont (
                                'Noto Sans',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    // component6Sc9 (405:1090)
                    padding: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame50fzh (405:1091)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // photosZ4V (405:1092)
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
                                // viewmoreUhF (405:1093)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
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
                          // frame47PZK (405:1094)
                          padding: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                          width: double.infinity,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle198G1 (405:1095)
                                  width: 110*fem,
                                  height: 100*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(2.5*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-19-1fX.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15*fem,
                                ),
                                Container(
                                  // rectangle20dyT (405:1096)
                                  width: 110*fem,
                                  height: 100*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(2.5*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-20-MHb.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15*fem,
                                ),
                                Container(
                                  // rectangle219gu (405:1097)
                                  width: 110*fem,
                                  height: 100*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(2.5*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-21-8Yq.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15*fem,
                                ),
                                Container(
                                  // rectangle22VEy (405:1098)
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
                                  // rectangle23pHF (405:1099)
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
                                  // rectangle24wMs (405:1100)
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
        image: AssetImage('assets/page-2/images/logo.png'),
        height: 40,
        width: 52.35,
      ),
      actions: [
        Image(
          image: AssetImage('assets/page-2/images/notification.png'),
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