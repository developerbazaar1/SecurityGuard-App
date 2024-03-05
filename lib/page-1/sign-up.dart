import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/Background.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/utils.dart';

import 'login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    GlobalKey<FormState> formkey = GlobalKey<FormState>();

    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return BackGround(
        content: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // raynetfinallogo1uyj (173:75)
          margin: EdgeInsets.fromLTRB(0 * fem, 50 * fem, 0.29 * fem, 39 * fem),
          width: 104.71 * fem,
          height: 80 * fem,
          child: Image.asset(
            'assets/page-1/images/raynet-final-logo-1-3H3.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          // frame14Pe1 (86:62)
          margin: EdgeInsets.fromLTRB(9.5 * fem, 0 * fem, 0 * fem, 0 * fem),
          width: 394 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                // signupasacustomerVh3 (561:172)
                'SIGN UP AS A CUSTOMER',
                style: SafeGoogleFont(
                  'Noto Sans',
                  fontSize: 32 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.3625 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
              Container(
                // autogroupz2xhRah (Tsktn85Bs7Usomcnf8Z2xh)
                padding:
                    EdgeInsets.fromLTRB(30 * fem, 30 * fem, 30 * fem, 0 * fem),
                width: double.infinity,
                child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InputBoxHeading(
                          "Full Name", 'assets/page-2/images/mingcute-pen.png'),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        controller: nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {


                            return "Please enter your name";
                          } else if(value.length>3){
                            return "Too short name";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          nameController.text = value!;
                        },

                      ),
                      InputBoxHeading(
                          "Email Address", 'assets/page-2/images/alternate-email-.png'),

                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        validator: (value) {
                          var emailValidator =
                          EmailValidator.validate(value!);
                          if (value == null || value!.isEmpty) {

                              return "Email can't be empty";

                          } else if (emailValidator != true) {
                            print(EmailValidator.validate(value!));

                              return "Invalid email address";

                          }else{
                            return null;
                          }
                          onSaved: (value) {
                            emailController = value!;
                          };
                        },
                      ),
                      InputBoxHeading(
                          "Phone No.", 'assets/page-2/images/mingcute-cellphone.png'),

                      TextFormField(
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                      ),
                      InputBoxHeading(
                          "Password", 'assets/page-2/images/mingcute-key.png'),

                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordController,
                      ),
                      Center(
                        child: Container(

                          height: 50,
                          width: 120,
                          // frame2Gy7 (50:156)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 20 * fem, 0 * fem, 20 * fem),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: ElevatedButton(


                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                formkey.currentState!.save();
                                // You can now use _name and _email for further processing.

                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: EdgeInsets.zero,
                            ),
                            child: Center(
                              child: Container(

                                width: MediaQuery.of(context).size.width*0.48,

                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),





                                decoration: BoxDecoration(
                                  color: ThemeColor,
                                  borderRadius:
                                  BorderRadius.circular(30 * fem),
                                ),
                                child: Text(
                                  'SIGN UP',
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

                      InkWell(
                        onTap: (){},
                        child: Container(
                          // frame16AXb (223:544)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              70 * fem, 9.5 * fem, 10.5 * fem, 8.5 * fem),
                          width:MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff3a3a3a)),
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // flatcoloriconsgoogleSV7 (223:545)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 12.5 * fem, 1 * fem),
                                width: 25 * fem,
                                height: 25 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/flat-color-icons-google.png',
                                  width: 25 * fem,
                                  height: 25 * fem,
                                ),
                              ),
                              Text(
                                // signupwithgoogleZJq (223:550)
                                'Sign Up With Google',
                                style: SafeGoogleFont(
                                  'Nunito',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff016699),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // frame4oys (86:84)
                        margin: EdgeInsets.fromLTRB(
                            82 * fem, 0 * fem, 10.5 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // alreadyhaveanaccountkeD (86:85)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8.5 * fem, 0 * fem),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: SafeGoogleFont(
                                    'Nunito',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3625 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Already have an account',
                                    ),
                                    TextSpan(
                                      text: '? ',
                                      style: SafeGoogleFont(
                                        'Nunito',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TextButton(
                              // login8HP (86:122)
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));

                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Text(
                                'Login',
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
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
