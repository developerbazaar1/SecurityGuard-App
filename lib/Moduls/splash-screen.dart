import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/Moduls/UploadDocument/upload-your-picture.dart';



import 'package:myapp/utils.dart';

import 'HomeScreen/HomeScreen.dart';
import 'login.dart';



class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>LoginScreen(),
        ));
  }
  @override
  void initState() {
    _navigatetohome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(

      backgroundColor: kSpashColor,
      body: Container(


        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Container(
              // raynetfinallogo1RvR (173:79)

              child: Image.asset(
                'assets/page-2/images/finalImage/logo.png',
                fit: BoxFit.cover,
                height: 180,
                width: 235.59,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
