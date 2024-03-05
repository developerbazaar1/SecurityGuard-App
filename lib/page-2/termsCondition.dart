import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/utils.dart';

import 'notification-list.dart';

class TermsCondition extends StatelessWidget {
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                // frame63n1f (319:2219)
                margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 0*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      // frame52meH (319:2220)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      height: 43*fem,
                      decoration: BoxDecoration (
                      ),
                      child: Center(
                        child: Text(
                          // termsconditionsLL1 (319:2224)
                          'Terms & Conditions',
                          style: SafeGoogleFont (
                            'Noto Sans',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3625*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      )
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
                      padding: EdgeInsets.fromLTRB(25*fem, 15*fem, 25*fem, 14*fem),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.75*fem,
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
                      child: SizedBox(
                        child: Container(
                          constraints: BoxConstraints (
                            maxWidth: 301*fem,
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
                                  text: 'Terms & Condition:\n\n',
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
                                  text: 'Lorem ipsum dolor sit amet consectetur. Tincidunt mi justo eget ac amet lacus dolor cursus in. Aliquam condimentum consequat ut consectetur. ',
                                  style: SafeGoogleFont (
                                    'Noto Sans',
                                    fontSize: 18*ffem,
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
      leadingWidth: 70*fem,
      title:Container(
        margin: EdgeInsets.only(left: 0,top: 5,bottom: 5),
        child: Image(
          image: AssetImage('assets/page-2/images/logo.png'),
          height: 40,
          width: 52.35,
        ),),


      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        }
        ,icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
      ) ,



      actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationList()));
        }, icon:  Image(
          image: AssetImage('assets/page-2/images/notification.png'),
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