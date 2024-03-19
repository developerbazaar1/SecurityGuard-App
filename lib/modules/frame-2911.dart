import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../core/utils/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 263;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // frame2911Tjo (690:73)
        padding: EdgeInsets.fromLTRB(10*fem, 5*fem, 9*fem, 4*fem),
        width: double.infinity,
        height: 124*fem,
        decoration: BoxDecoration (
          color: Color(0xfffcfcfc),
        ),
        child: Center(
          // pleasesubmithereanyothersecuri (690:74)
          child: SizedBox(
            child: Container(
              constraints: BoxConstraints (
                maxWidth: 244*fem,
              ),
              child: Text(
                'Please submit here any other security qualifications you may have e.g NASDU for Dog Handlers.Personal Protection Or any medical qualifications you may be trained in e.g first aid training.',
                style: SafeGoogleFont (
                  'Nunito',
                  fontSize: 14*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3625*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
      ),
          );
  }
}