import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/ConfirmDetails.dart';
import 'package:myapp/Modals/NextPageButtonModal.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/page-2/Loading/LoadingController.dart';
import 'package:myapp/page-2/guard-description-page.dart';
import 'package:myapp/page-2/notification-list.dart';
import 'package:myapp/utils.dart';

class Searching extends StatefulWidget {
  const Searching({super.key});

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final LoadingController controller = Get.put(LoadingController());
    return Scaffold(
      appBar: Appbar(context, fem),

      body: Center(
      child:Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(),

            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/page-2/images/InShot.gif'),
                  ),
                  SizedBox(
                    height: 10 * fem,
                  ),
                  Container(
                    child: Text(
                      'Your Safety Is Our Priority',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Noto Sans",
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 10 * fem,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),

                    constraints: BoxConstraints(
                      maxWidth: 294 * fem,
                    ),
                    child: Text(
                      'We are currently in the process of selecting the ideal security guard to ensure your safety and protection.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Nunito',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3625 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 43*fem,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),


                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ThemeColortDark,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ConfirmDetails(),));
                      }, child: Text('Got It', textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Nunito',
                      fontSize: 24 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.3625 * ffem / fem,
                      color: Color(0xffffffff),
                    ),))),
            ),
          ],
        ),
      )),
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
