import 'package:flutter/material.dart';

import '../../../core/Utils/sizeUtils.dart';
import '../../../utils.dart';
 var width = SizeUtils.instance.screenWidth;
 var height = SizeUtils.instance.screenHeight;
Color kSpashColor = Color(0xffdff4ff);
Color kThemeColorDark = Color(0xff005272);
Color kbuttonBgColor = Color(0xff016699);
Color kOnlinebuttonBgColor = Color(0xffA8FFB1);
Color kReceivedColor = Color(0xff00FF1A);
Color kThemeColor = Color(0xff016699);
Color kError = Color(0xffFF0000);
Color kDivide = Color(0xff898989);
Color kColorUnderline = Color(0xffA0A0A0);
Color kAppbarUnderline = Color(0xff3A3A3A);
Color kBackgroundBottomsheet = Color(0xffDFF4FF);
Color kBackgroundSelectSecurity = Color(0xff9ADDFF);
Color kChatColor = Color(0xff666668);
Color kUploadBorderColor = Color(0xff3A3A3A);
Color kEmojiColor = Color(0xff2C2C2E);
Color kIconSend = Color(0xff8E8E93);
 Color  kSecondary =const Color(0xff000000);
 Color  kInverseSecondary = const Color(0xffFFFFFF);
 Color  kText=const Color(0xff000000);
 Color  kborderColor=const Color(0xff000000);
 Color  ktextGrayColor=const Color(0xff6F6F6F) ;
 Color kOnSecondary =const Color(0xff424242);
 Color KdarkAppBar=const Color(0xff323232);
 Color  kTextGrayColor=const Color(0xff6F6F6F) ;
 Color  kDarkBlue=const Color(0xff005E91);

TextStyle hintStyle = TextStyle(
  color: Colors.black87,
  fontFamily: 'Nunito',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
);
TextStyle requestTitle = TextStyle(
  color: Color(0xff3A3A3A),
  fontFamily: 'Nunito',
  fontSize: 14,
  fontWeight: FontWeight.w600,
  letterSpacing: 0,
);
TextStyle requestSubtitle = TextStyle(
  color: Color(0xff000000),
  fontFamily: 'Nunito',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
);
TextStyle docHeadingStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'Nunito',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
);

TextStyle InputStyle = TextStyle(
  color: kThemeColorDark,
  fontFamily: 'Nunito',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
);

TextStyle buttonStyle = SafeGoogleFont(
  'Nunito',
  fontSize: width*0.04,
  fontWeight: FontWeight.w600,

  color: Color(0xffffffff),
);
TextStyle rejectButtonStyle = SafeGoogleFont(
  'Nunito',
  fontSize: width*0.04,
  fontWeight: FontWeight.w600,

  color: kSecondary,
);



final InputDecoration customInputDecoration = InputDecoration(
  errorStyle: TextStyle(
    fontFamily: 'Nunito',
    fontSize: 12,

    fontWeight: FontWeight.w700,

    color: Color(0xffF00), // Customize the error text color
    // Customize the error text font size
  ),
);
Widget InputBoxHeading(text, image) {
  return Container(
    margin: EdgeInsets.only(top: 22, bottom: 0),
    child: Row(
      children: [
        Image(
          image: AssetImage(image),
          height: 16,
          width: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: hintStyle,
          textAlign: TextAlign.left,
        ),
      ],
    ),
  );
}

bool isValidEmail(String email) {
  // Use a regular expression for email validation
  final RegExp emailRegExp =
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  return emailRegExp.hasMatch(email);
}
