

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../core/utils/utils.dart';
import '../modules/homePage/controller/homeController.dart';
import 'constants.dart';
class BottomsheetSecurity extends StatelessWidget {
  BottomsheetSecurity({
    super.key,

    required this.fem,
    required this.ffem,
    required this.name,
    required this.price,
    required this.discount,
    required this.image, required this.color, required this.section,
  });
final int section;
  final double fem;
  final double ffem;
  final String name, price, discount, image;
  final Color color;
  HomePageController homePageController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Container(
      // frame30bBP (I264:853;192:1146)
      margin: EdgeInsets.fromLTRB(4.5 * fem, 0 * fem, 4.5 * fem, 0 * fem),
      child: TextButton(
        onPressed: () {
          print(section);
          if(section==1){
            homePageController.bottomsheetselectedfirst.value = ThemeColorBackgroundSelectSecurity;
            homePageController.bottomsheetselectedsecond.value = Colors.white;
            homePageController.bottomsheetselectedthired.value = Colors.white;



          }else if(section==2){
            homePageController.bottomsheetselectedsecond.value = ThemeColorBackgroundSelectSecurity;
            homePageController.bottomsheetselectedfirst.value = Colors.white;
            homePageController.bottomsheetselectedthired.value = Colors.white;




          }else if(section==3){
            homePageController.bottomsheetselectedthired.value = ThemeColorBackgroundSelectSecurity;
            homePageController.bottomsheetselectedfirst.value = Colors.white;
            homePageController.bottomsheetselectedsecond.value = Colors.white;



          }

          homePageController.isSecurityButtonSelected.value =true;
          print(homePageController.isSecurityButtonSelected.value.toString());
          //homePageController.updateSecurityButtonColor();
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 23 * fem, 10 * fem),
          width: double.infinity,
          height: 60 * fem,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10 * fem),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // rectangle16Sho (I264:853;192:1147)
                margin:
                EdgeInsets.fromLTRB(0 * fem, 0 * fem, .5 * fem, 0 * fem),
                width: 40 * fem,
                height: 40 * fem,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // dogunitsk9XUM (I264:853;192:1148)
                margin:
                EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0.5 * fem, 0 * fem),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
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
                // frame33eYy (I264:853;192:1149)
                margin:
                EdgeInsets.fromLTRB(0 * fem, 6.5 * fem, 0 * fem, 5.5 * fem),
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // nv5 (I264:853;192:1150)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 6 * fem, 0 * fem),
                      child: Text(
                        price,
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff005271),
                        ),
                      ),
                    ),
                    Container(
                      // VpV (I264:853;192:1151)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 1 * fem),
                      child: Text(
                        discount,
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Nunito',
                          fontSize: 13 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3625 * ffem / fem,
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xff000000),
                          decorationColor: Color(0xff000000),
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
}