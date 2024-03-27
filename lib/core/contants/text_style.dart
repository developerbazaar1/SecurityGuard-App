import 'package:flutter/material.dart';

import '../../theme/theme_helper.dart';
import '../utils/utils.dart';



class TextThemeStyle {



  ///Custom text


  static TextStyle bodyMedium(Color color, {String? fontFamily}) {
    return   SafeGoogleFont(
      'Nunito',
      fontSize: 16 ,
      fontWeight: FontWeight.w400,

      color: Color(0xff000000),
    );
  }
  ///Custom text

  static TextStyle displayLarge(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 20,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle displayMedium(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 20,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle displaySmall(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 20   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle titleLarge(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 14   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle titleMedium(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 14   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle titleSmall(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 14   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle bodyLarge(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 16   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }



  static TextStyle bodySmall(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 16   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle headlineLarge(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 24   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle headlineMedium(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 24   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle headlineSmall(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 24   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle labelLarge(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 14   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle labelMedium(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 10   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle labelSmall(Color color, {String? fontFamily}) {
    return TextStyle(
      fontSize: 11   ,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      inherit: true,
      color: color,
      decoration: TextDecoration.none,
    );
  }


}

class MyTextThemeLight {
  TextTheme lightModeTextTheme({String? fontFamily}) {
    /* String semiBold = "${fontFamily}SemiBold";
    String regular = "${fontFamily}Regular";
    String light = "${fontFamily}Light";
    String bold = "${fontFamily}Bold";*/
    return TextTheme(
      displayLarge: TextThemeStyle.displayLarge(
        Colors.black,
        fontFamily: fontFamily,
      ),
      displayMedium: TextThemeStyle.displayMedium(
        Colors.black,
        fontFamily: fontFamily,
      ),
      displaySmall: TextThemeStyle.displaySmall(
           Colors.black,
        fontFamily: fontFamily,
      ),
      titleSmall: TextThemeStyle.titleSmall(
           Colors.black,
        fontFamily: fontFamily,
      ),
      titleMedium: TextThemeStyle.titleMedium(
           Colors.black,
        fontFamily: fontFamily,
      ),
      titleLarge: TextThemeStyle.titleLarge(
           Colors.black,
        fontFamily: fontFamily,
      ),
      bodySmall: TextThemeStyle.bodySmall(
           Colors.black,
        fontFamily: fontFamily,
      ),
      bodyMedium: TextThemeStyle.bodyMedium(
           Colors.black,
      ),
      bodyLarge: TextThemeStyle.bodyLarge(
           Colors.black,
        fontFamily: fontFamily,
      ),
      headlineSmall: TextThemeStyle.headlineSmall(
        theme.primaryColor,
        fontFamily: fontFamily,
      ),
      headlineLarge: TextThemeStyle.headlineLarge(
           Colors.black,
        fontFamily: fontFamily,
      ),
      headlineMedium: TextThemeStyle.headlineMedium(
        theme.primaryColor,
        fontFamily: fontFamily,
      ),
    );
    /*

      labelSmall: TextThemeStyle.bodyText2(
           Colors.black,
        fontFamily: fontFamily,
      ) ,
      labelMedium: TextThemeStyle.headline6(
           Colors.black,
        fontFamily: semiBold,
      ),
      labelLarge: TextThemeStyle.headline6(
           Colors.black, fontFamily: semiBold,),
     */
  }
}
