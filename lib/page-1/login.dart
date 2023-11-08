import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/Background.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/page-1/sign-up.dart';
import 'package:myapp/page-2/Registration/registration.dart';
import 'package:myapp/utils.dart';

import '../Modals/InputHeading.dart';
import 'forgot-password.dart';

class Login extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController  = TextEditingController();
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return BackGround(content: Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // raynetfinallogo1W7T (173:73)
              margin: EdgeInsets.fromLTRB(
                  0 * fem, 80 * fem, 0.29 * fem, 0 * fem),
              width: 104.71 * fem,
              height: 80 * fem,
              child: Image.asset(
                'assets/page-1/images/raynet-final-logo-1-d2H.png',
                fit: BoxFit.cover,
                height: 80,
                width: 104.71,
              ),
            ),
            Container(
              // frame14BUV (50:136)
              margin: EdgeInsets.fromLTRB(
                  19 * fem, 120 * fem, 0 * fem, 0 * fem),
              width: 367 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    // loginasacustomerXHT (50:137)
                    'LOGIN AS A CUSTOMER',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Noto Sans',
                      fontSize: 32 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.3625 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                  Container(
                    // autogroupux9xDg5 (TskvDAX9ncrUMP4a4cUx9X)
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 20 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame15XRs (50:138)
                          margin: EdgeInsets.fromLTRB(
                              30.5 * fem, 0 * fem, 27.5 * fem, 0 * fem),
                          width: double.infinity,
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InputBoxHeading("Email Address",'assets/page-2/images/alternate-email-.png' ),


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

                                InputBoxHeading("Password",'assets/page-2/images/mingcute-key.png',),


                                TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  controller: passwordController,
                                  validator: (value) {
                                    if (value == null || value!.isEmpty) {
                                      return "Field can\'t be empty.";
                                    }
                                    if (value!.length < 8) {
                                      return "password should be 8 characters";
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    passwordController.text = value!;
                                  },
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) =>ForgetPassword(),));
                                      },
                                      child: Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                            fontFamily: 'Nunito',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 0,
                                            color: Colors.black),
                                        textAlign: TextAlign.right,
                                      )),
                                ),
                                Center(
                                  child: Container(
                                    height: 50,
                                    width: 100,
                                    // frame2Gy7 (50:156)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    child: ElevatedButton(


                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          _formKey.currentState!.save();
                                          // You can now use _name and _email for further processing.
                                          print('Name: ${passwordController.text}');
                                          print('Email: ${emailController.text}');
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width*0.3,
                                          padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),





                                          decoration: BoxDecoration(
                                            color: ThemeColor,
                                            borderRadius:
                                            BorderRadius.circular(30 * fem),
                                          ),
                                          child: Text(
                                            'LOGIN',
                                            style: SafeGoogleFont(
                                              'Nunito',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.3625 * ffem / fem,
                                              color: Color(0xffffffff),
                                            ),
                                            textAlign: TextAlign.center,
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


                        Container(
                          // frame16A2u (223:532)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 18 * fem, 20 * fem),
                            padding: EdgeInsets.fromLTRB(
                                68 * fem, 9.5 * fem, 65.5 * fem, 8.5 * fem),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff3a3a3a)),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child:GestureDetector(
                              onTap:
                                  (){},
                              child:
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // flatcoloriconsgoogleg1F (223:539)
                                    margin: EdgeInsets.fromLTRB(0 * fem,
                                        0 * fem, 12.5 * fem, 1 * fem),
                                    width: 25 * fem,
                                    height: 25 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/flat-color-icons-google-6KK.png',
                                      width: 25 * fem,
                                      height: 25 * fem,
                                    ),
                                  ),
                                  Text(
                                    // loginwithgooglemHb (223:533)
                                    'Login With Google',
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff016699),
                                    ),
                                  ),
                                ],
                              ),)
                        ),
                        Container(
                          // frame45JH (86:130)
                          margin: EdgeInsets.fromLTRB(
                              62 * fem, 0 * fem, 80 * fem, 10 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // donthaveaccount1xd (86:131)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                child: Text(
                                  'Don’t have account?',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Nunito',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3625 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              TextButton(
                                // registernow7Vs (86:132)
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Registeration(),));
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'Register Now',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Nunito',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3625 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }


}




