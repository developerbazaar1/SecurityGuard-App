import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/app/theme/constant/constants.dart';

import 'package:myapp/utils.dart';

import '../../notification-list.dart';
import '../controller/AppSettingController.dart';

class AppSetting extends GetView<AppSettingController> {
  AppSettingController appSettingController = Get.put(AppSettingController());
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),
      body: Container(
        // appsettingZN1 (319:2071)
        padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame63p6u (319:2072)
              margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 20 * fem, 0 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame52vfj (319:2173)
                    padding:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    height: 43 * fem,
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Text(
                        // appsettingkPs (319:2177)
                        'App Setting',
                        style: SafeGoogleFont(
                          'Noto Sans',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.3625 * ffem / fem,
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
                  Container(
                    // autogroupk7ydV6Z (TskXttY5E2ysg7MHrdK7Yd)
                    padding: EdgeInsets.fromLTRB(
                        1.5 * fem, 20 * fem, 1.5 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [SwitchBar(fem: fem, ffem: ffem, value:  Obx(() =>   Switch(value: appSettingController.isNotificationSwitchOn.value, onChanged: (value){

                        appSettingController.valueChanger(value);



                      })), text: 'Notification'),
                        SwitchBar(fem: fem, ffem: ffem, value: Obx(() =>   Switch(value: appSettingController.isUpdateSwitchOn.value, onChanged: (value){

                          appSettingController.valueUpdate
                            (value);



                        })), text:'Update' )




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
      leadingWidth: 130,
      leading: Container(
        margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
        child: Row(

          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios),color: Colors.black,),

            Image(
              image: AssetImage('assets/page-2/images/finalImage/logo.png'),
              height: 40,
              width: 52.35,
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationList()));
          },
          icon: Image(
            image: AssetImage('assets/page-2/images/finalImage/notification.png'),
            height: 30,
            width: 30,
          ),
        ),
        SizedBox(
          width: 30 * fem,
        ),
      ],
    );
  }
}

class SwitchBar extends StatelessWidget {
  SwitchBar({
    super.key,
    required this.fem,
    required this.ffem,
    required this.value,
    required this.text,
  });

  final double fem;
  final double ffem;
  final Widget value;
  final String text;

  @override
  Widget build(BuildContext context) {
    AppSettingController appSettingController = Get.put(AppSettingController());

    return Container(
      // frame30QDX (319:2081)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
      padding: EdgeInsets.fromLTRB(25 * fem, 10 * fem, 25 * fem, 10 * fem),
      width: double.infinity,
      height: 54 * fem,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(20 * fem),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            offset: Offset(0 * fem, 0 * fem),
            blurRadius: 2.5 * fem,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
            child: Text(
              text,
              style: SafeGoogleFont(
                'Nunito',
                fontSize: 18 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.3625 * ffem / fem,
                color: Color(0xff000000),
              ),
            ),
          ),
          value
        ],
      ),
    );
  }
}
