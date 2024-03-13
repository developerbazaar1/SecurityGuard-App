import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:myapp/Modals/Background.dart';
import 'package:myapp/Modals/LoginWithGoogle.dart';
import 'package:myapp/Modals/Logo.dart';
import 'package:myapp/Modals/buttonModal.dart';
import 'package:myapp/Modals/heading.dart';
import 'package:myapp/Moduls/UploadDocument/upload-your-picture.dart';

import '../../app/theme/constant/constants.dart';
import '../../utils.dart';
import 'SignUpController.dart';

class Registeration extends StatelessWidget {



  RegistrationController controller = Get.put(RegistrationController());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var number;



  FocusNode focusNode = FocusNode();


  @override



  @override
  Widget build(BuildContext context) {


    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return BackGround(
      content: SingleChildScrollView(
        child: Column(

          children: [
            BackLogin(),
            SizedBox(
              height: 30,
            ),
            Heading(
              fem: fem,
              ffem: ffem,
              text: "REGISTER AS A \n SECURITY PROVIDER",
            ),
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.fromLTRB(30 * fem, 30 * fem, 30 * fem, 0 * fem),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InputBoxHeading(
                        "Full Name", 'assets/page-2/images/finalImage/pen.png'),
                    TextFormField(
                      controller: controller.nameController.value,
                      decoration: customInputDecoration,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'Please enter your name..';
                        } else if (value!.length < 3) {
                          return "Too short name";
                        }
                        return null; // Return null if the input is valid.
                      },
                      onSaved: (value) {
                        controller.nameController.value.text = value!;
                      },
                    ),
                    InputBoxHeading("Email Address",
                        'assets/page-2/images/finalImage/alternate-email.png'),
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
                        'assets/page-2/images/finalImage/cellphone.png'),
                    // TextFormField(
                    //   keyboardType: TextInputType.phone,
                    //   controller: controller.phoneController.value,
                    //   decoration: customInputDecoration,
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return "Please enter your mobile number";
                    //     }
                    //     if (value!.contains(',')) {
                    //       return "Invalid input. Please enter numbers only";
                    //     }
                    //     if (value.contains('.')) {
                    //       return "Invalid input. Please enter numbers only";
                    //     }
                    //     if (value.contains('-')) {
                    //       return "Invalid input. Please enter numbers only";
                    //     }
                    //     if (value.contains(' ')) {
                    //       return "Invalid input. Please enter numbers only without any spaces";
                    //     }
                    //
                    //     if (value.length < 10) {
                    //       return "Please enter valid phone number";
                    //     }
                    //     return null;
                    //   },
                    //   inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    //   onSaved: (value) {
                    //     controller.phoneController.value.text = value!;
                    //   },
                    // ),
                    IntlPhoneField(

                      textAlign: TextAlign.left,
                      textAlignVertical: TextAlignVertical.center,
                      controller: controller.phoneController.value,
                      focusNode: focusNode,
                      decoration:customInputDecoration,


                      languageCode: "en",
                      onChanged: (phone) {
                        print(phone.completeNumber);
                        controller.isPhoneEmpty.value = false;
                      },
                      initialCountryCode: 'GB',

                      onCountryChanged: (country) {
                        print('Country changed to: ' + country.name);
                      },
                      validator: (phone){
                        if(phone!.countryISOCode.isEmpty){
                          return "Please enter country code";
                        }
                        if(phone!.number.isEmpty){
                          print('value is empty');
                          return "Please enter mobile number";
                        }

                      },

                    ),

                      Obx((){
                        return controller.isPhoneEmpty.value == true?
                        Text(
                          "Please enter your phone number",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                          color: kError,

                          fontFamily: 'Nunito',
                          fontSize: 12,

                          fontWeight: FontWeight.w700,
                          // Customize the error text font size
                        ),):SizedBox();

      }



                          )
                    ,
                    Obx(() {
                      return controller.error.value
                          ? Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 0, top: 10, bottom: 10),
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/page-2/images/finalImage/securitySymbol.png'),
                                    height: 20,
                                    width: 20,
                                  ),
                                  Text(
                                    'Choose Service',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Nunito',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "* Please choose service",
                                    style: TextStyle(
                                      color: kError,
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            )
                          : SizedBox();
                    }),
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Column(
                        children: <Widget>[
                          Obx(() => buildCustomCheckboxListTile(
                                  'Dog Unit - K9', controller.option1.value,
                                  (value) {
                                controller.updateChectBoxValue(value, 1);
                              }, 'assets/page-2/images/finalImage/dog.png')),
                          Obx(
                            () => buildCustomCheckboxListTile(
                                'Door Supervisors', controller.option2.value,
                                (value) {
                              controller.updateChectBoxValue(value, 2);
                            }, 'assets/page-2/images/finalImage/securityGaurd.png'),
                          ),
                          Obx(
                            () => buildCustomCheckboxListTile(
                                'Security Guards', controller.option3.value,
                                (value) {
                              controller.updateChectBoxValue(value, 3);
                            }, 'assets/page-2/images/finalImage/securityGuards.png'),
                          )
                        ],
                      ),
                    ),


                    Center(
                      child: Container(
                        // frame2Gy7 (50:156)
                        margin: EdgeInsets.fromLTRB(
                            10 * fem, 0 * fem, 10 * fem, 20 * fem),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            controller.updateServiceError();
                            if(controller.phoneController.value.text.isEmpty|| controller.phoneController.value.text ==null){
                              print("value is null");
                              controller.isPhoneEmpty.value = true;
                            }
                            if (_formKey.currentState!.validate()) {
                            controller.option1.value=false;
                             controller.option2.value= false;
                              controller.option3.value= false;

                              if(controller.phoneController.value.text.isNotEmpty)

                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {

                                      return  UploadPicture();
                                    },
                                  ));


                              // Valid form data, you can perform login here.
                              // For now, we'll just print the email and password.
                            }
                          },
                          child: buttomModal(
                            bgColor: kbuttonBgColor,
                            fem: fem,
                            ffem: ffem,
                            text: 'Next',
                            margin: 52.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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

        fontFamily: ' Nunito',
        fontSize: 12,

        fontWeight: FontWeight.w700,
        // Customize the error text font size
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: kColorUnderline, // Customize the underline color
          width: 1.0, // Customize the underline width
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: kError, // Customize the underline color
          width: 1.0, // Customize the underline width
        ),
      ));
  Widget buildCustomCheckboxListTile(
      String title, bool value, ValueChanged<bool?> onChanged, String image) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 15, bottom: 10, left: 10, right: 12),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Colors.black, width: 1)),
          child: Theme(
            data: ThemeData(
                unselectedWidgetColor:
                    Colors.transparent), // Set the border color here
            child: Checkbox(
              value: value,
              onChanged: onChanged,
              checkColor: Colors.white,
              activeColor: kThemeColorDark,
            ),
          ),
        ),
        Image(
          image: AssetImage(image),
          height: 20,
          width: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Nunito',
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
