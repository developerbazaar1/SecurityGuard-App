import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/constants.dart';


import '../../core/utils/utils.dart';
import '../notification/view/notification-list.dart';
import '../payment-done.dart';
import 'Controller.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    PaymentController controller = Get.put(PaymentController());
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),

      body: Container(
        // paymentpage9td (274:133)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              Container(
                // frame77wdT (274:476)
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame75hcd (274:462)
                      margin: EdgeInsets.fromLTRB(25*fem, 0*fem, 25*fem, 26*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10*fem,
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 10*fem),
                              // frame52DL5 (293:1915)

                              decoration: BoxDecoration (
                                ),
                              child: Center(
                                child: Text(

                                  'Booking Details',
                                  style: SafeGoogleFont (
                                    'Noto Sans',
                                    fontSize: 24*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      Center(
                        child: Container(
                        width: MediaQuery.of(context).size.width,
                          child: CustomPaint(
                            painter: DashedBorderPainter(),
                          ),
                        ),),
                          Container(
                            // frame654V7 (274:284)
                            margin: EdgeInsets.fromLTRB(0*fem, 25*fem, 50*fem, 0*fem),
                            width: double.infinity,
                            height: 50*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // ellipse1bzq (274:285)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 50*fem,
                                  height: 50*fem,
                                  decoration: BoxDecoration (
                                    color: Colors.red,
                                  shape: BoxShape.circle,
                                    image: DecorationImage (
                                      image: AssetImage (
                                        'assets/modules/images/roundProfileSmall.png',

                                      ),

                                    ),
                                  ),
                                ),
                                Container(
                                  // group29i3s (274:286)
                                  margin: EdgeInsets.fromLTRB(0*fem, 3.5*fem, 0*fem, 3.5*fem),
                                  width: 233*fem,
                                  height: double.infinity,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // frame432qF (274:287)
                                        left: 1*fem,
                                        top: 0*fem,
                                        child: Container(
                                          width: MediaQuery.sizeOf(context).width,
                                          height: 22*fem,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // stefanjrichardsmXw (274:288)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                                child: Text(
                                                  'Stefan J. Richards',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'Nunito',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.3625*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // checkSe5 (274:289)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                width: 15*fem,
                                                height: 14.27*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/check-CKK.png',
                                                  width: 15*fem,
                                                  height: 14.27*fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // frame44NXj (274:292)
                                        left: 0*fem,
                                        top: 21*fem,
                                        child: Container(
                                          width: 233*fem,
                                          height: 22*fem,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // securityguardhpu (274:293)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                                child: Text(
                                                  'Security Guard',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'Nunito',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.3625*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // experienceEK3 (274:294)
                                                '15+ Experience',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Nunito',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3625*ffem/fem,
                                                  color: Color(0xff3a3a3a),
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
                          SizedBox(
                            height: 15*fem,
                          ),
                          Container(
                            // frame30kYH (274:298)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame43tPb (274:302)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                  width:MediaQuery.of(context).size.width,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // datetime1UD (274:303)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        width: double.infinity,
                                        child: Text(
                                          'Date & Time:',
                                          textAlign: TextAlign.left,
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff3a3a3a),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // mondayoct241045amUch (274:310)
                                        'Monday, Oct 24 (10:45 AM)',
                                        style: SafeGoogleFont (
                                          'Nunito',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.3625*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame45PUm (274:311)
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupfhqdYsT (Tskg2eyzX9aNGVREiVFhQD)
                                        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(

                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                              width: double.infinity,
                                              child: Text(
                                                'Price:',
                                                textAlign: TextAlign.left,
                                                style: SafeGoogleFont (
                                                  'Nunito',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.3625*ffem/fem,
                                                  color: Color(0xff3a3a3a),
                                                ),
                                              ),
                                            ),
                                            RichText(
                                              // houryxm (274:313)
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Nunito',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.3639999628*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '£12.99 ',
                                                    style: SafeGoogleFont (
                                                      'Nunito',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.3625*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '/ Hour',
                                                    style: SafeGoogleFont (
                                                      'Nunito',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.3625*ffem/fem,
                                                      color: Color(0xff3a3a3a),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // frame732Jm (274:318)
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // hoursar5 (274:319)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 163*fem, 0*fem),
                                              child: Text(
                                                '£12.99 × 5 Hours',
                                                style: SafeGoogleFont (
                                                  'Nunito',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.3625*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // 3Ds (274:320)
                                              '£64.95',
                                              style: SafeGoogleFont (
                                                'Nunito',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.3625*ffem/fem,
                                                color: Color(0xff000000),
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
                          SizedBox(
                            height: 15*fem,
                          ),
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: CustomPaint(
                                painter: DashedBorderPainter(),
                              ),
                            ),),

                          Container(
                            // frame74ydK (274:467)
                            padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 5*fem),
                            width: double.infinity,

                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // totalh3X (274:468)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 202*fem, 0*fem),
                                  child: Text(
                                    'Total:',
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 24*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Text(
                                  // DnZ (274:469)
                                  '£64.95',
                                  style: SafeGoogleFont (
                                    'Nunito',
                                    fontSize: 24*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff005271),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: CustomPaint(
                                painter: DashedBorderPainter(),
                              ),
                            ),),
                        ],
                      ),
                    ),
                    Container(
                      // component4aND (274:434)
                      padding: EdgeInsets.fromLTRB(20*fem, 30*fem, 20*fem, 30*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xffdff4ff),
                        borderRadius: BorderRadius.circular(30*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0*fem, 0*fem),
                            blurRadius: 12.5*fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame63gRF (274:435)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  // paymentmethodQc9 (274:436)
                                  'Payment Method',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Noto Sans',
                                    fontSize: 24*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3625*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(
                                  height: 20*fem,
                                ),
                                Container(
                                  // frame529Jq (274:437)
                                  width: double.infinity,
                                  height: 36*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // addcarddetailssEq (274:438)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 133*fem, 0*fem),
                                        child: Text(
                                          'Add Card Details',
                                          style: SafeGoogleFont (
                                            'Nunito',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.3625*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame51NSV (274:439)
                                        width: 76*fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: ThemeColorBackgroundSelectSecurity,
                                          borderRadius: BorderRadius.circular(10*fem),
                                        ),
                                        child: Center(
                                          child: TextButton(
                                            onPressed: (){
controller.changeCard();
                                            },
                                            child: Text(
                                              'Change',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Nunito',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.3625*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20*fem,
                                ),
                                Container(
                                  // frame762G9 (274:463)
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame57xvV (274:441)
                                        padding: EdgeInsets.fromLTRB(10*fem, 5*fem, 10*fem, 5*fem),
                                        width: double.infinity,
                                        height: 45*fem,
                                        decoration: BoxDecoration (
                                          color: Colors.grey.shade100,
                                          borderRadius: BorderRadius.circular(10*fem),
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(


                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45*fem, 0*fem),
                                              child: Text(
                                                'Card Number',
                                                style: SafeGoogleFont (
                                                  'Nunito',
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3625*ffem/fem,
                                                  color: Color(0xff3a3a3a),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: 10,bottom: 5),
                                              width: 175*fem,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5*fem),
                                              ),
                                              child: Center(
                                                child: TextFormField(
                                                  style: InputStyle,
                                                  controller: controller.cardNumberController.value,
                                                  keyboardType: TextInputType.number,
                                                  inputFormatters: [LengthLimitingTextInputFormatter(15)],
                                                  decoration: InputDecoration(

                                                    border: InputBorder.none
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15*fem,
                                      ),
                                      Container(
                                        // frame53GTK (274:445)
                                        padding: EdgeInsets.fromLTRB(10*fem, 6.5*fem, 10*fem, 6.5*fem),
                                        width: double.infinity,
                                        height: 45*fem,
                                        decoration: BoxDecoration (
                                           color: Colors.grey.shade100,
                                          borderRadius: BorderRadius.circular(10*fem),
                                        ),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // cardholdernameBqB (274:446)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45*fem, 0*fem),
                                                child: Text(
                                                  'Card Holder Name',
                                                  style: SafeGoogleFont (
                                                    'Nunito',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.3625*ffem/fem,
                                                    color: Color(0xff3a3a3a),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(left: 10,bottom: 5),
                                                width: 175*fem,
                                                height: double.infinity,
                                                decoration: BoxDecoration (
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5*fem),
                                                ),
                                                child: Center(
                                                  child: TextFormField(
                                                    style: InputStyle,
                                                    controller: controller.nameController.value,
                                                    keyboardType: TextInputType.name,
                                                    decoration: InputDecoration(

                                                        border: InputBorder.none
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15*fem,
                                      ),
                                      Container(
                                        // frame58iyX (274:449)
                                        width: double.infinity,
                                        height: 45*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              // frame51FiZ (274:450)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                              padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 10*fem),
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                color: Colors.grey.shade100,
                                                borderRadius: BorderRadius.circular(10*fem),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(

                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                                    child: Text(
                                                      'Expiry Date',
                                                      style: SafeGoogleFont (
                                                        'Nunito',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.3625*ffem/fem,
                                                        color: Color(0xff3a3a3a),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(left: 10,),
                                                    width: 59*fem,
                                                    height: 25,
                                                    decoration: BoxDecoration (
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(5*fem),
                                                    ),
                                                    child: TextFormField(
                                                      style: InputStyle,
                                                      controller: controller.expireyDateController.value,
                                                      keyboardType: TextInputType.number,
                                                      textAlign: TextAlign.center,

                                                      inputFormatters: [LengthLimitingTextInputFormatter(5)],
                                                      decoration: InputDecoration(

                                                          border: InputBorder.none
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // frame53NRo (274:453)
                                              padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 10*fem),
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                color: Colors.grey.shade100,
                                                borderRadius: BorderRadius.circular(10*fem),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(

                                                    margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 10*fem, 0*fem),
                                                    child: Text(
                                                      'CVV',
                                                      style: SafeGoogleFont (
                                                        'Nunito',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.3625*ffem/fem,
                                                        color: Color(0xff3a3a3a),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(left: 10,),
                                                    width: 53*fem,
                                                    height: 25,
                                                    decoration: BoxDecoration (
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(5*fem),
                                                    ),
                                                    child: TextFormField(
                                                      style: InputStyle,
                                                      controller: controller.cvvController.value,
                                                      keyboardType: TextInputType.number,
                                                      inputFormatters: [LengthLimitingTextInputFormatter(3)],
                                                      decoration: InputDecoration(

                                                          border: InputBorder.none
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
                          ),
                          TextButton(
                            // frame30zTB (274:456)
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PaymentDone(),));
                            },
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 53*fem,
                              child: Container(
                                // frame326m7 (274:457)
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xff000000),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Pay £64.95',
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
            ],
          ),
        ),
      ),
          );
  }
  AppBar Appbar(BuildContext context, double fem) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: ThemeColorAppbarUnderline, // Choose your border color
                    width: 1.0, // Choose the border width
                  ),
                ))),
      ),
      backgroundColor: Colors.white,
      elevation: 8,
      leadingWidth: 70*fem,
      title:  Container(
        margin: EdgeInsets.only(left: 0,top: 5,bottom: 5),
        child: Image(
          image: AssetImage('assets/images/logo.png'),
          height: 40,
          width: 52.35,
        ),
      ) ,



      leading:  IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon:Icon(Icons.arrow_back_ios,color: Colors.black,),
      )

       ,



      actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationList()));
        }, icon:  Image(
          image: AssetImage('assets/images/notification.png'),
          height: 30,
          width: 30,
        ),),

        SizedBox(
          width: 30 * fem,
        ),
      ],
    );
  }
}