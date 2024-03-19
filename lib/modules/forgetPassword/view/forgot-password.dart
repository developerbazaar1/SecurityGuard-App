import 'package:flutter/material.dart';
import 'package:myapp/Modals/Background.dart';
import 'package:myapp/Modals/Logo.dart';
import 'package:myapp/Modals/buttonModal.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/Modals/heading.dart';
import 'package:myapp/page-1/CheckEmail.dart';
import '../../../core/contants/image_constant.dart';
import '../../../core/contants/text_constant.dart';
import '../../../core/utils/utils.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return BackGround(

      content: Center(
        child: Column(
          children: [
            BackLogin(),
            SizedBox(height: 130,),
            Container(
              margin: EdgeInsets.fromLTRB(32 * fem, 0 * fem, 30 * fem, 0 * fem),
              width: double.infinity,              child: Column(
                children: [
                  Heading(fem: fem, ffem: ffem, text: CT.forget_password),
                  Container(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InputBoxHeading(
                              CT.email, CI.imgAlternateEmail),
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                           decoration: customInputDecoration,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return CT.enter_email;
                              }
                              if (!isValidEmail(value)) {
                                return CT.invalid_email;
                              }
                              // You can add more email validation here if needed.
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          Container(
                            margin:
                            EdgeInsets.fromLTRB(0 * fem, 10 * fem,0 * fem, 0 * fem),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Valid form data, you can send a password reset email here.
                                  // For now, we'll just print the email.
                                  print('Email: ${_emailController.text}');
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CheckEmail(),));
                                }
                              },

                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shadowColor: Colors.transparent,
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              child: buttomModal(ffem: ffem,fem: fem,text: CT.submit,margin: 36.5,),                          ),
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
}
