import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Modals/Background.dart';
import 'package:myapp/Modals/LoginWithGoogle.dart';
import 'package:myapp/Modals/Logo.dart';
import 'package:myapp/Modals/buttonModal.dart';
import 'package:myapp/Moduls/LoginScreen/controller/loginController.dart';
import 'package:myapp/app/theme/constant/constants.dart';
import 'package:myapp/Modals/heading.dart';
import 'package:myapp/Moduls/SignUp/view/signUp.dart';
import 'package:myapp/Moduls/WelcomScreeen.dart';



import 'package:myapp/utils.dart';


import '../../HomeScreen/view/HomeScreen.dart';
import '../../ForgetPassword/view/forgotPassword.dart';




class LoginScreen extends GetView<LoginController> {
  @override


  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;

    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return BackGround(
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(fem: fem),
            Container(
              padding: EdgeInsets.fromLTRB(0 * fem, 120 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Heading(fem: fem, ffem: ffem, text: "LOGIN AS A \n SECURITY PROVIDER"),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        30.5 * fem, 10 * fem, 27.5 * fem, 0 * fem),
                    width: double.infinity,
                    child: Form(
                      key: controller.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 10,),
                          InputBoxHeading("Email Address",
                              'assets/page-2/images/finalImage/alternate-email.png'),
                          TextFormField(

                            controller: controller.emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: customInputDecoration,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email.';
                              }
                              if (!isValidEmail(value!)) {
                                return 'Invalid email address.';
                              }
                              // You can add more email validation here if needed.
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          InputBoxHeading("Password",'assets/page-2/images/finalImage/key.png',),

                          TextFormField(
                            controller:controller.passwordController,
                            obscureText: true,

                            decoration: customInputDecoration,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your password.';
                              }
                              // You can add more password validation here if needed.
                              return null;
                            },
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>ForgotPasswordScreen(),));
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0,
                                      color: Colors.black),
                                  textAlign: TextAlign.right,
                                )),
                          ),
                          Center(
                            child: Container(

                              // frame2Gy7 (50:156)
                              margin: EdgeInsets.fromLTRB(
                                  10 * fem, 0 * fem, 10 * fem, 20 * fem),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  padding: EdgeInsets.zero,
                                ),

                                onPressed: () {
                                  if (controller.formKey.currentState!.validate()) {
                                    // Valid form data, you can perform login here.
                                    // For now, we'll just print the email and password.
                                    print('Email: ${controller.emailController.text}');
                                    print('Password: ${controller.passwordController.text}');
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(selectedIndexValue: 0,),));
                                  }
                                },
                                child: buttomModal(fem: fem, ffem: ffem, text: 'LOGIN', margin: 44, bgColor: kbuttonBgColor,),

                              ),
                            ),
                          ),

                          LoginwithGoogle(fem: fem, ffem: ffem,text: "Login With Google",),
                          Container(
                            // frame45JH (86:130)
                            margin: EdgeInsets.fromLTRB(
                                62 * fem, 0 * fem, 0 * fem, 10 * fem),
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  final InputDecoration customInputDecoration = InputDecoration(
      errorStyle: TextStyle(
        color: kError,



        fontFamily:' Nunito',
        fontSize: 12,

        fontWeight: FontWeight.w700,
        // Customize the error text font size
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: kColorUnderline, // Customize the underline color
          width: 1.0,           // Customize the underline width
        ),
      ),

      errorBorder:   UnderlineInputBorder(
        borderSide: BorderSide(
          color: kError, // Customize the underline color
          width: 1.0,           // Customize the underline width
        ),
      )
  );
}






