import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/NextPageButtonModal.dart';
import 'package:myapp/Modals/constants.dart';
import '../core/utils/utils.dart';
import 'HomeScreen/view/HomeScreen.dart';
import 'Payment/payment-page.dart';
import 'notification/view/notification-list.dart';

class GuardDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),
      body: Container(
       height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 13 * fem,
              ),
              Container(
                // frame377G5 (207:243)
                margin: EdgeInsets.fromLTRB(
                    0.5 * fem, 0 * fem, 0.5 * fem, 7.5 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        width: 100*fem,
                        height: 100 * fem,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                          image: DecorationImage(
                            image: AssetImage(
                              'assets/modules/images/roundProfileBig.png',

                            ),


                          ),
                        ),
                      ),
                    ),
                    Container(
                      // frame38L8q (207:244)
                      margin: EdgeInsets.fromLTRB(
                          0.5 * fem, 0 * fem, 0.5 * fem, 10 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // stefanjrichardsfwo (207:242)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            child: Text(
                              'Stefan J. Richards',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Nunito',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.3625 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // checkwPX (207:260)
                            width: 24 * fem,
                            height: 22.83 * fem,
                            child: Image.asset(
                              'assets/page-1/images/check-eYZ.png',
                              width: 24 * fem,
                              height: 22.83 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame39t3s (207:266)
                      margin: EdgeInsets.fromLTRB(
                          0.5 * fem, 0 * fem, 0.5 * fem, 15 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // securityguardd1T (207:267)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            child: Text(
                              'Security Guard',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Nunito',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.3625 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // experiencevWM (207:268)
                            '15+ Experience',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Nunito',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625 * ffem / fem,
                              color: Color(0xff3a3a3a),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame42GKK (422:160)
                      margin: EdgeInsets.fromLTRB(
                          34 * fem, 0 * fem, 34 * fem, 14.5 * fem),
                      width: double.infinity,
                      height: 80 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // frame40a57 (422:161)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                10 * fem, 10 * fem, 0 * fem, 0 * fem),
                            width: 150 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff898989)),
                              color: Color(0xfff2faff),
                              borderRadius: BorderRadius.circular(5 * fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  // hourlyrateEQZ (422:162)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 10 * fem),

                                  width: double.infinity,
                                  child: Text(
                                    'Hourly Rate',
                                    textAlign: TextAlign.start,
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // hourMVB (422:163)
                                  width: double.infinity,
                                  child: RichText(
                                    textAlign: TextAlign.start,
                                    text: TextSpan(
                                      style: SafeGoogleFont(
                                        'Nunito',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3625 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '£12.99 ',
                                        ),
                                        TextSpan(
                                          text: '/',
                                          style: SafeGoogleFont(
                                            'Nunito',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.3625 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' Hour',
                                          style: SafeGoogleFont(
                                            'Nunito',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.3625 * ffem / fem,
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
                          Container(
                            // frame41Nob (422:164)
                            padding: EdgeInsets.fromLTRB(
                                10 * fem, 13 * fem, 10 * fem, 13 * fem),
                            width: 150 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff898989)),
                              color: Color(0xfff2faff),
                              borderRadius: BorderRadius.circular(5 * fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  // hiredhL5 (422:165)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                  width: double.infinity,
                                  child: Text(
                                    'Hired',
                                    textAlign: TextAlign.start,
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // timescC9 (422:166)
                                  width: double.infinity,
                                  child: RichText(
                                    textAlign: TextAlign.start,
                                    text: TextSpan(
                                      style: SafeGoogleFont(
                                        'Nunito',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3625 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '252 ',
                                        ),
                                        TextSpan(
                                          text: 'Times',
                                          style: SafeGoogleFont(
                                            'Nunito',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.3625 * ffem / fem,
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
                        ],
                      ),
                    ),
                    Center(


                      child: Container(
                        padding:EdgeInsets.only(left: 30,right: 30),
                        constraints: BoxConstraints(

                        ),
                        child: Text(
                          'To Hire Our Security Guard, Please Click On The "Hire" Button.',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // component5fpd (223:308)
                margin:
                    EdgeInsets.fromLTRB(7 * fem, 0 * fem, 6 * fem, 10 * fem),
                padding:
                    EdgeInsets.fromLTRB(20 * fem, 0 * fem, 20 * fem, 0 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // servicesofferedMxM (223:331)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 5 * fem),
                      child: Text(
                        'Services Offered',
                        style: SafeGoogleFont(
                          'Noto Sans',
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff005271),
                        ),
                      ),
                    ),
                    Container(
                      // verifiedbybusiness69F (223:329)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 4 * fem),
                      child: Text(
                        'Verified By Business',
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff3a3a3a),
                        ),
                      ),
                    ),
                    Container(
                      // frame46gt9 (223:363)
                      width: 223 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame44pUZ (223:364)
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // mingcuteaiminglineNky (223:365)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                  width: 15 * fem,
                                  height: 15 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mingcute-aiming-line-dUM.png',
                                    width: 15 * fem,
                                    height: 15 * fem,
                                  ),
                                ),
                                Text(
                                  // temporarysecurityguardsFpm (223:369)
                                  'Temporary Security Guards',
                                  style: SafeGoogleFont(
                                    'Nunito',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.3625 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupdepkHmT (TskhQnM9WbR53en6ovdePK)
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 5 * fem, 0 * fem, 0 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame45pmP (223:370)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 50 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // mingcuteaiminglinemgd (223:371)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 10 * fem, 0 * fem),
                                        width: 15 * fem,
                                        height: 15 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/mingcute-aiming-line.png',
                                          width: 15 * fem,
                                          height: 15 * fem,
                                        ),
                                      ),
                                      Text(
                                        // executiveprotection5BX (223:375)
                                        'Executive Protection',
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5 * fem,
                                ),
                                Container(
                                  // frame46bff (223:376)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 94 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // mingcuteaiminglinek2m (223:377)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 10 * fem, 0 * fem),
                                        width: 15 * fem,
                                        height: 15 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/mingcute-aiming-line-cW5.png',
                                          width: 15 * fem,
                                          height: 15 * fem,
                                        ),
                                      ),
                                      Text(
                                        // eventsecuritycKs (223:381)
                                        'Event Security',
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5 * fem,
                                ),
                                Container(
                                  // frame47Wg9 (223:382)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // mingcuteaimingline3AH (223:383)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 10 * fem, 0 * fem),
                                        width: 15 * fem,
                                        height: 15 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/mingcute-aiming-line-YFb.png',
                                          width: 15 * fem,
                                          height: 15 * fem,
                                        ),
                                      ),
                                      Text(
                                        // maritimeyachtsecuritymMB (223:387)
                                        'Maritime & Yacht Security',
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5 * fem,
                                ),
                                Container(
                                  // frame4868Z (223:388)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 49 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // mingcuteaiminglineeA5 (223:389)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 10 * fem, 0 * fem),
                                        width: 15 * fem,
                                        height: 15 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/mingcute-aiming-line-UCy.png',
                                          width: 15 * fem,
                                          height: 15 * fem,
                                        ),
                                      ),
                                      Text(
                                        // commercialsecurityM4V (223:393)
                                        'Commercial Security',
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
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
                  ],
                ),
              ),
              Container(
                // component6VRb (223:395)
                margin:
                    EdgeInsets.fromLTRB(7 * fem, 0 * fem, 6 * fem, 10 * fem),

                width: MediaQuery.of(context).size.width,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 37.5 * fem,
                      sigmaY: 37.5 * fem,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame50Mih (223:555)
                          margin: EdgeInsets.fromLTRB(
                              20 * fem, 0 * fem, 20 * fem, 5 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(

                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  'Photos',
                                  style: SafeGoogleFont(
                                    'Noto Sans',
                                    fontSize: 22 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3625 * ffem / fem,
                                    color: Color(0xff005271),
                                  ),
                                ),
                              ),

                              Container(
                                // viewmorenp1 (223:557)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    'View More',
                                    style: SafeGoogleFont(
                                      'Noto Sans',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,

                                      color: Color(0xff005271),
                                    ),
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame47KJ9 (223:488)
                          padding: EdgeInsets.fromLTRB(
                              2 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: double.infinity,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle19cY9 (223:489)
                                  width: 110 * fem,
                                  height: 100 * fem,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(2.5 * fem),
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-19.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15 * fem,
                                ),
                                Container(
                                  // rectangle20w4d (223:490)
                                  width: 110 * fem,
                                  height: 100 * fem,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(2.5 * fem),
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-20.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15 * fem,
                                ),
                                Container(
                                  // rectangle21dy3 (223:491)
                                  width: 110 * fem,
                                  height: 100 * fem,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(2.5 * fem),
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle-21.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15 * fem,
                                ),
                                Container(
                                  // rectangle22mpM (223:492)
                                  width: 110 * fem,
                                  height: 100 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(2.5 * fem),
                                    color: Color(0xffd9d9d9),
                                  ),
                                ),
                                SizedBox(
                                  width: 15 * fem,
                                ),
                                Container(
                                  // rectangle23gwK (223:493)
                                  width: 110 * fem,
                                  height: 100 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(2.5 * fem),
                                    color: Color(0xffd9d9d9),
                                  ),
                                ),
                                SizedBox(
                                  width: 15 * fem,
                                ),
                                Container(
                                  // rectangle24dbf (223:494)
                                  width: 110 * fem,
                                  height: 100 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(2.5 * fem),
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
                ),
              ),
              Container(
                // component7NJM (223:495)
                margin:
                    EdgeInsets.fromLTRB(7 * fem, 0 * fem, 6 * fem, 30 * fem),
                padding:
                    EdgeInsets.fromLTRB(20 * fem, 0 * fem, 20 * fem, 1 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 5 * fem),
                      child: Text(
                        'Description',
                        style: SafeGoogleFont(
                          'Noto Sans',
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff005271),
                        ),
                      ),
                    ),
                    Container(
                      // loremipsumdolorsitametconsecte (223:509)
                      constraints: BoxConstraints(
                        maxWidth: 340 * fem,
                      ),
                      child:Column(
                        children: [
                          RichText(


                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Noto Sans',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text:
                                  'Lorem ipsum dolor sit amet consectetur. Cras odio nec ac pharetra at felis varius. Mattis elit nec morbi tempor id urna fermentum. Fermentum sit lectus tortor bibendum tristique sit non. Sit vulputate imperdiet quis pretium....',
                                ),
                                TextSpan(

                                  text: 'Read More',
                                  style: SafeGoogleFont(
                                    'Noto Sans',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3625 * ffem / fem,
                                    color: Color(0xff005271),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = (){
                                      //    Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage(),));
                                    },
                                ),


                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // frame50SUZ (367:77)
                padding: EdgeInsets.fromLTRB(
                    10.5 * fem, 15 * fem, 10.5 * fem, 8 * fem),
                width: double.infinity,
                height: 68 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0 * fem, 0 * fem),
                      blurRadius: 7.5 * fem,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    NextPageButton(fem: fem, ffem: ffem,buttonText: 'Cancel',function: Homescreen(selectedIndexValue: 0),BGColor: ThemeColorChatColor,),
                    NextPageButton(fem: fem, ffem: ffem,buttonText: 'Hire Now',function: PaymentPage(),BGColor: ThemeColortDark,),
                  ],
                ),
              ),
            ],
          ),
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
      leadingWidth: 130,

      leading: Container(
        margin: EdgeInsets.only(left: 0,top: 5,bottom: 5),
        child: Image(
          image: AssetImage('assets/images/logo.png'),
          height: 40,
          width: 52.35,
        ),
      ) ,



      actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationList()));
        }, icon:  Image(
          image: AssetImage('assets/images/notification.png'),
          height: 30,
          width: 30,
        ),),

        SizedBox(
          width: 30 * fem,
        ),
      ],
    );
  }
}


