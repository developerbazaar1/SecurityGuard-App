import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/chatModal.dart';
import 'package:myapp/Modals/constants.dart';


import '../../../core/contants/image_constant.dart';
import '../../../core/contants/text_constant.dart';
import '../../../core/utils/utils.dart';
import '../../notification/view/notification-list.dart';

class Chat extends StatelessWidget {
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
        child: Container(
          // frame63YwB (605:1126)

          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(bottom: 10),
                  // frame52Htm (605:1127)

                  width: double.infinity,
                  height: 43 * fem,

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // frame24BUM (605:1128)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 1.5 * fem, 5 * fem, 0 * fem),
                        width: 30 * fem,
                        height: 30 * fem,
                        child: Image.asset(
                          CI.imgchat,
                          width: 30 * fem,
                          height: 30 * fem,
                        ),
                      ),
                      Text(
                        CT.chats,
                        style: SafeGoogleFont(
                          'Noto Sans',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
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
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ChatTap(
                        fem: fem,
                        ffem: ffem,
                        image: CI.imgDummyProfile,
                        name: 'Allyson Rollins',
                        duration: '10:45AM', chatColor: ThemeColortDark,
                      ),
                      Divider(
                        thickness: 0.5,
                        color: ThemeColorDivide,
                      ),
                      ChatTap(
                        chatColor: ThemeColortDark,
                        fem: fem,
                        ffem: ffem,
                        image: 'assets/images/ellipse-1-bg-d1j.png',
                        name:'Alba Montgomery',
                        duration:   'Yesterday',
                      ),
                      Divider(
                        thickness: 0.5,
                        color: ThemeColorDivide,
                      ),
                      ChatTap(
                        fem: fem,
                        ffem: ffem,
                        image:   'assets/images/ellipse-1-bg-3hB.png',
                        name: 'Reuben Rios',
                        duration: 'Tuesday', chatColor: Colors.white,
                      ),
                      Divider(
                        thickness: 0.5,
                        color: ThemeColorDivide,
                      ),
                      ChatTap(
                        chatColor: Colors.white,
                        fem: fem,
                        ffem: ffem,
                        image:  'assets/images/ellipse-1-bg-cSD.png',
                        name: 'Nathanael Fritz',
                        duration: 'Monday',
                      ),
                      Divider(
                        thickness: 0.5,
                        color: ThemeColorDivide,
                      ),
                      ChatTap(
                        chatColor: Colors.white,
                        fem: fem,
                        ffem: ffem,
                        image:  'assets/images/ellipse-1-bg-Nj3.png',
                        name:    'Carmen Nixon',
                        duration:       '12/08/23',
                      ),








                      Divider(
                        thickness: 0.5,
                        color: ThemeColorDivide,
                      ),
                    ],
                  ),
                ),
              ],
            ),
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


