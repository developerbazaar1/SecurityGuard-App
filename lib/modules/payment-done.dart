import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../core/utils/utils.dart';
import 'HomeScreen/view/HomeScreen.dart';

class PaymentDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(

      body: Container(
        // paymentdoneXdj (274:557)
       // padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 216.22*fem),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration (
          color: Color(0xffdff4ff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              // frame36hiZ (274:558)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // dazzlecustomercare1eth (704:172)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                    width: 396*fem,
                    height: 229.57*fem,
                    child: Image.asset(
                      'assets/page-1/images/dazzle-customer-care-1-36H.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // paymentdoneFn1 (274:560)
                    margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 10*fem),
                    child: Text(
                      'Payment Done!',
                      style: SafeGoogleFont (
                        'Noto Sans',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.3625*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // thankyouforselectingourservice (274:561)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                    constraints: BoxConstraints (
                      maxWidth: 327*fem,
                    ),
                    child: Text(
                      'Thank you for selecting our service and placing your trust in our security guard to protect you.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Nunito',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3625*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // frame32LS5 (274:582)
                    margin: EdgeInsets.fromLTRB(16.5*fem, 0*fem, 16.5*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(selectedIndexValue: 1),));
                      },
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 48*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff000000),
                          borderRadius: BorderRadius.circular(10*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Chat With Guard',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.3625*ffem/fem,
                              color: Color(0xffffffff),
                            ),
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
          );
  }
}