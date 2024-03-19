import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/Background.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/page-1/CheckEmail.dart';
import '../core/utils/utils.dart';

import 'login.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    TextEditingController emailController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return BackGround(
        content: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // raynetfinallogo1SAV (173:74)
          margin: EdgeInsets.fromLTRB(0 * fem, 60 * fem, 0.29 * fem, 157 * fem),
          width: 104.71 * fem,
          height: 80 * fem,
          child: Image.asset(
            'assets/page-1/images/raynet-final-logo-1-TW9.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          // frame14AMP (99:404)
          margin: EdgeInsets.fromLTRB(32 * fem, 0 * fem, 30 * fem, 0 * fem),
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // forgotpassword71j (99:405)
                  margin:
                      EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 40 * fem),
                  child: Text(
                    'FORGOT PASSWORD',
                    style: SafeGoogleFont(
                      'Noto Sans',
                      fontSize: 32 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.3625 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                InputBoxHeading(
                    "Email Address", 'assets/modules/images/alternate-email-.png'),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Field can\'t be empty.';
                    }
                    if (!isValidEmail(value!)) {
                      return 'Please enter valid email address.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    emailController.text = value!;
                  },
                ),
                Container(
                  // frame2s2q (99:410)
                  margin:
                      EdgeInsets.fromLTRB(90 * fem, 30 * fem, 91 * fem, 0 * fem),
                  child: ElevatedButton(


                    onPressed: () {

                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // You can now use _name and _email for further processing.

                        print('Email: ${emailController.text}');
                      }

                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: Container(
                      width: double.infinity,
                      height: 43 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff016699),
                        borderRadius: BorderRadius.circular(30 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'SUBMIT',
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3625 * ffem / fem,
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
        ),
      ],
    ));
  }
}
