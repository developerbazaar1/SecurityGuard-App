import 'package:flutter/material.dart';

Color ThemeSpashColor = Color(0xffdff4ff);
Color ThemeColortDark = Color(0xff005272);
Color ThemeColor = Color(0xff016699);

Color ThemeColorError = Color(0xffFF0000);
Color ThemeColorDivide = Color(0xff898989);
Color ThemeColorUnderline = Color(0xffA0A0A0);
Color ThemeColorAppbarUnderline = Color(0xff3A3A3A);
Color ThemeColorBackgroundBottomsheet = Color(0xffDFF4FF);
Color ThemeColorBackgroundSelectSecurity = Color(0xff9ADDFF);
Color ThemeColorChatColor = Color(0xff666668);

TextStyle hintStyle = TextStyle(
  color: Colors.black87,
  fontFamily: 'Nunito',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
);

TextStyle confirmHeading = TextStyle(
  color: Color(0xff3A3A3A),
  fontFamily: 'Nunito',
  fontSize: 14,
  fontWeight: FontWeight.w600,
  letterSpacing: 0,
);TextStyle confirmtext = TextStyle(
  color: Color(0xff000000),
  fontFamily: 'Nunito',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
);
TextStyle InputStyle = TextStyle(
  color: ThemeColortDark,
  fontFamily: 'Nunito',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
);

TextStyle searchTextStyle = TextStyle(
  color: ThemeColortDark,
  fontFamily: "Nunito",
  fontSize: 16,
  fontWeight: FontWeight.w400,
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
