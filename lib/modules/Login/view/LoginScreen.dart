import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myapp/Modals/Background.dart';
import 'package:myapp/Modals/LoginWithGoogle.dart';
import 'package:myapp/Modals/Logo.dart';
import 'package:myapp/Modals/buttonModal.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/Modals/heading.dart';
import 'package:myapp/modules/forgetPassword/view/forgot-password.dart';
import 'package:myapp/routes/app_routes.dart';
import '../../../core/contants/image_constant.dart';
import '../../../core/contants/text_constant.dart';
import '../../../core/utils/utils.dart';
import '../../Registration/view/registration.dart';
import '../../forgetPassword/view/forgot-password.dart';
import '../controller/loginController.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController loginScreenController = Get.put(LoginController());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              padding:
                  EdgeInsets.fromLTRB(0 * fem, 120 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Heading(fem: fem, ffem: ffem, text: CT.login_customer),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        30.5 * fem, 10 * fem, 27.5 * fem, 0 * fem),
                    width: double.infinity,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          InputBoxHeading(CT.email, CI.imgAlternateEmail),
                          TextFormField(
                            controller:
                                loginScreenController.emailController.value,
                            keyboardType: TextInputType.emailAddress,
                            decoration: customInputDecoration,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '';
                              }
                              if (!isValidEmail(value)) {
                                return CT.enter_email;
                              }
                              // You can add more email validation here if needed.
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          InputBoxHeading(
                            CT.password,
                            CI.imgMingcutekey,
                          ),
                          TextFormField(
                            controller:
                                loginScreenController.passwordController.value,
                            obscureText: true,
                            decoration: customInputDecoration,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return CT.enter_password;
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
                                  Get.toNamed(AppRoutes.forgetScreen);
                                },
                                child: Text(
                                  CT.forget_password,
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
                            child: Obx(() {
                              return loginScreenController.isLoading.value
                                  ? Center(child: CircularProgressIndicator())
                                  : buttomModal(
                                    fem: fem,
                                    ffem: ffem,
                                    text: CT.login,
                                    onPressed: (){
                                      if (_formKey.currentState!
                                          .validate()) {
                                        loginScreenController
                                            .loginApi(context);
                                      }
                                    },
                                    margin: 44,
                                  );
                            }),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          LoginwithGoogle(
                            fem: fem,
                            ffem: ffem,
                            text: CT.login_google,
                          ),
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
                                    CT.dont_account,
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
                                    Get.toNamed(AppRoutes.registrationScreen);
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Text(
                                    CT.register_now,
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
        color: ThemeColorError,

        fontFamily: ' Nunito',
        fontSize: 12,

        fontWeight: FontWeight.w700,
        // Customize the error text font size
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeColorUnderline, // Customize the underline color
          width: 1.0, // Customize the underline width
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeColorError, // Customize the underline color
          width: 1.0, // Customize the underline width
        ),
      ));
}
