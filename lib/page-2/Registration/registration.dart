import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:myapp/Modals/Background.dart';
import 'package:myapp/Modals/LoginWithGoogle.dart';
import 'package:myapp/Modals/Logo.dart';
import 'package:myapp/Modals/buttonModal.dart';
import 'package:myapp/Modals/heading.dart';
import 'package:myapp/page-2/HomeScreen/HomeScreen.dart';

import 'package:myapp/page-2/Login/login.dart';
import 'package:myapp/page-2/Registration/controller.dart';
import 'package:myapp/page-2/Registration/registration.dart';

import '../../Modals/constants.dart';
import '../../utils.dart';
import '../../page-1/login.dart';

class Registeration extends StatefulWidget {
  @override
  _RegisterationState createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  RegistrationController controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return BackGround(
      content: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 0 * fem, left: 30 * fem),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 14.16 * fem, 0.01 * fem),
                            width: 8.76 * fem,
                            height: 16.68 * fem,
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: Colors.black,
                              weight: 0.5,
                            ),
                          ),
                          Text(
                            'Back',
                            style: SafeGoogleFont(
                              'Nunito',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Logo(fem: fem),
                SizedBox(width: 80,)

              ],
            ),
          ),
          SizedBox(height: 30,),
          Heading(fem: fem, ffem: ffem,text: "SIGN UP AS A CUSTOMER",),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(30 * fem, 30 * fem, 30 * fem, 5 * fem),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  InputBoxHeading(
                      "Full Name", 'assets/page-2/images/mingcute-pen.png'),
                  TextFormField(
                    controller: controller.nameController.value,
                    decoration: customInputDecoration,
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty||value==null) {
                        return 'Please enter your name..';
                      }else if(value!.length<3){
                        return "Too short name";
                      }
                      return null; // Return null if the input is valid.
                    },
                    onSaved: (value) {
                      controller.nameController.value.text = value!;
                    },
                  ),
                  InputBoxHeading("Email Address",
                      'assets/page-2/images/alternate-email-.png'),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.emailController.value,
                    decoration: customInputDecoration,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email.';
                      }
                      if (!isValidEmail(value!)) {
                        return 'Invalid email address.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      controller.emailController.value.text = value!;
                    },
                  ),
                  InputBoxHeading("Phone No.",
                      'assets/page-2/images/mingcute-cellphone.png'),
                  TextFormField(
                    controller: controller.phoneController.value,
                    keyboardType: TextInputType.phone,
                    decoration: customInputDecoration,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your mobile number";
                      }
                      if (value!.contains(',')) {
                        return "Invalid input. Please enter numbers only";
                      }
                      if (value.contains('.')) {
                        return "Invalid input. Please enter numbers only";
                      }
                      if (value.contains('-')) {
                        return "Invalid input. Please enter numbers only";
                      }
                      if (value.contains(' ')) {
                        return "Invalid input. Please enter numbers only without any spaces";
                      }

                      if (value.length < 10) {
                        return "Please enter valid phone number";
                      }
                      return null;
                    },
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],

                    onSaved: (value) {
                      controller.phoneController.value.text = value!;
                    },
                  ),
                  InputBoxHeading(
                      "Password", 'assets/page-2/images/mingcute-key.png'),
                  TextFormField(
                    controller: controller.passwordController.value,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: customInputDecoration,
                    validator: (value) {
                      if (value == null || value!.isEmpty) {
                        return "Please enter your password";
                      }
                      if (value!.length < 6) {
                        return "password should be 8 characters";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      controller.passwordController.value.text = value!;
                    },
                  ),
                  SizedBox(height: 16.0),
                  Obx(() {
                    return controller.isLoading.value?const CircularProgressIndicator():
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
                            if (_formKey.currentState!.validate()) {
                              controller.RegistrationAPI(context);
                              // Valid form data, you can perform login here.
                              // For now, we'll just print the email and password.

                              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(selectedIndexValue: 0,),));
                            }
                          },
                          child: buttomModal(fem: fem, ffem: ffem, text: 'SIGN UP', margin: 34,),

                        ),
                      ),
                    );
                  }),


                  LoginwithGoogle(fem: fem, ffem: ffem,text: "Sign Up With Google",),

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

                          child: RichText(
                            textAlign: TextAlign.right,
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));

                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.only(left: -10),
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
                          )

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  final InputDecoration customInputDecoration = InputDecoration(
      errorStyle: TextStyle(
        color: ThemeColorError,



        fontFamily:' Nunito',
        fontSize: 12,

        fontWeight: FontWeight.w700,
        // Customize the error text font size
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeColorUnderline, // Customize the underline color
          width: 1.0,           // Customize the underline width
        ),
      ),

      errorBorder:   UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeColorError, // Customize the underline color
          width: 1.0,           // Customize the underline width
        ),
      )
  );

  // Simple email validation function

}


