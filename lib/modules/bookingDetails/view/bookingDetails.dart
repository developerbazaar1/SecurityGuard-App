import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/modules/Booking/controller/bookingController.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:myapp/theme/theme_helper.dart';

import '../../../core/contants/text_constant.dart';
import '../../../core/contants/text_style.dart';
import '../../../core/utils/utils.dart';
import '../../notification/view/notification-list.dart';
import '../controller/bookingDetailsController.dart';

class BookingDetails extends GetView<BookingDetailsController> {
  BookingDetails({super.key});

  final arguments = Get.arguments;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        appBar: Appbar(context, fem),
        body: Obx(() {
          return controller.getBookingDetailsData.value != null
              ? Container(
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(

                          margin: EdgeInsets.fromLTRB(
                              25 * fem, 0 * fem, 25 * fem, 0 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame52nYR (293:1900)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                height: 43 * fem,
                                decoration: BoxDecoration(),
                                child: Center(
                                  child: Text(
                                    CT.booking_details,
                                    style: TextThemeStyle.headlineLarge(
                                        FontSize:
                                            MediaQuery.sizeOf(context).width *
                                                0.060),
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  width: MediaQuery.of(context).size.width,
                                  child: CustomPaint(
                                    painter: DashedBorderPainter(),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20 * fem,
                              ),
                              Container(
                                // frame65J9P (293:1863)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 50 * fem, 0 * fem),
                                width: double.infinity,
                                height: 50 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ellipse1nqF (293:1864)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                      width: 50 * fem,
                                      height: 50 * fem,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                              arguments[1],
                                            ),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Container(
                                      // group29GVX (293:1865)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          3.5 * fem, 0 * fem, 3.5 * fem),
                                      width: 233 * fem,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // frame43bGu (293:1866)
                                            left: 1 * fem,
                                            top: 0 * fem,
                                            child: Container(
                                              width: 163 * fem,
                                              height: 22 * fem,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // stefanjrichards81w (293:1867)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        5 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      arguments[0],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Nunito',
                                                        fontSize: 16 * ffem,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height:
                                                            1.3625 * ffem / fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // checkR13 (293:1868)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem),
                                                    width: 15 * fem,
                                                    height: 14.27 * fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/check.png',
                                                      width: 15 * fem,
                                                      height: 14.27 * fem,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // frame44k3K (293:1871)
                                            left: 0 * fem,
                                            top: 21 * fem,
                                            child: Container(
                                              width: 233 * fem,
                                              height: 22 * fem,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // securityguardrs3 (293:1872)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        10 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      controller
                                                          .getBookingDetailsData
                                                          .value!
                                                          .serviceDetails!
                                                          .serviceTitle!,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Nunito',
                                                        fontSize: 16 * ffem,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height:
                                                            1.3625 * ffem / fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  // Text(
                                                  //   // experienceywf (293:1873)
                                                  //   '15+ Experience',
                                                  //   textAlign: TextAlign.center,
                                                  //   style: SafeGoogleFont(
                                                  //     'Nunito',
                                                  //     fontSize: 16 * ffem,
                                                  //     fontWeight:
                                                  //         FontWeight.w400,
                                                  //     height:
                                                  //         1.3625 * ffem / fem,
                                                  //     color: Color(0xff3a3a3a),
                                                  //   ),
                                                  // ),
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
                                height: 20 * fem,
                              ),
                              Container(
                                // frame30VQD (293:1874)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DateTime(context,fem, ffem, CT.startDnT,'${controller.formateStartDate.value} (${controller.formateStartTime.value})'),
                                    DateTime(context,fem, ffem, CT.endDnT,'${controller.formateEndDate.value} (${controller.formateEndTime.value})'),
                                    Container(

                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupkcxhkzM (TskafPky4JWL1fuVp8kCxh)
                                            padding: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                10 * fem,
                                                0 * fem,
                                                2 * fem),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // priceWCq (293:1879)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      1 * fem),
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Price:',
                                                    textAlign: TextAlign.left,
                                                    style: SafeGoogleFont(
                                                      'Nunito',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height:
                                                          1.3625 * ffem / fem,
                                                      color: Color(0xff3a3a3a),
                                                    ),
                                                  ),
                                                ),
                                                RichText(
                                                  // hourEed (293:1880)
                                                  text: TextSpan(
                                                    style: SafeGoogleFont(
                                                      'Nunito',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 1.3639999628 *
                                                          ffem /
                                                          fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            '£${controller.getBookingDetailsData.value!.booking!.serviceCharges!} ',
                                                        style: TextThemeStyle.bodyLarge(fontSize: MediaQuery.sizeOf(context).width*.04),
                                                      ),
                                                      TextSpan(
                                                        text: '/ Hour',
                                                        style: SafeGoogleFont(
                                                          'Nunito',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.3625 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff3a3a3a),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // frame73k97 (293:1881)
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  // hours3tu (293:1882)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      10 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    '£${controller.getBookingDetailsData.value!.booking!.serviceCharges!} × ${controller.getBookingDetailsData.value!.booking!.bookingHours!.toString()} Hours',
                                                     style: TextThemeStyle.bodyLarge(fontSize: MediaQuery.sizeOf(context).width*.04),
                                                  ),
                                                ),
                                                Text(
                                                  // Yqf (293:1883)
                                                  '£${controller.getBookingDetailsData.value!.booking!.bookingTotalAmount!.toString()}',
                                                  style: TextThemeStyle.bodyLarge(fontSize: MediaQuery.sizeOf(context).width*.04),
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
                                height: 20 * fem,
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 0),
                                  width: MediaQuery.of(context).size.width,
                                  child: CustomPaint(
                                    painter: DashedBorderPainter(),
                                  ),
                                ),
                              ),
                              Container(
                                // frame74HYM (293:1884)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 5 * fem, 0 * fem, 5 * fem),
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // totalReZ (293:1885)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        CT.total,
                                        style:TextThemeStyle.displayLarge(fontSize: MediaQuery.sizeOf(context).width*0.06) ,
                                      ),
                                    ),
                                    Text(
                                      // Mo7 (293:1886)
                                      '£${controller.getBookingDetailsData.value!.booking!.bookingTotalAmount!.toString()}',
                                      style:TextThemeStyle.displayLarge(fontSize: MediaQuery.sizeOf(context).width*0.06) ,
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 0),
                                  width: MediaQuery.of(context).size.width,
                                  child: CustomPaint(
                                    painter: DashedBorderPainter(),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              if(controller.getBookingDetailsData.value!.booking!.customerRating==null || controller.getBookingDetailsData.value!.booking!.customerStatus==null)
                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: theme.primaryColor),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                width: MediaQuery.of(context).size.width *
                                    0.85 *
                                    fem,
                                child: DropdownButtonFormField<String>(
                                  dropdownColor: Colors.white,
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                  icon: const Icon(
                                      Icons.arrow_drop_down_outlined),
                                  hint: Text("Choose Job Status"),
                                  elevation: 16,
                                  isExpanded: true,
                                  style: const TextStyle(color: Colors.black),
                                  onChanged: (String? value) async{
                                    controller.selectedValue = value!;

                                    print(controller.selectedValue);
                                    if (value == "Job Done") {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            backgroundColor: Colors.white,
                                            title: const Center(
                                                child: Text(
                                                    'Comment and  Rating')),
                                            actionsPadding: EdgeInsets.only(
                                                top: 0, bottom: 20),
                                            content: Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.04,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.6,
                                                    child: RatingBar.builder(
                                                      glow: true,
                                                      glowColor: Colors.amber,
                                                      updateOnDrag: true,
                                                      glowRadius: 0.01,
                                                      itemSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.08,
                                                      initialRating: controller
                                                          .rating.value,
                                                      minRating: 1,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 3.0),
                                                      itemBuilder:
                                                          (context, _) => Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      onRatingUpdate: (value) {
                                                        controller.rating
                                                            .value = value;
                                                      },
                                                    ),
                                                  ),
                                                  Obx(() => Text(
                                                        "${controller.rating.value}",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.05,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            actions: <Widget>[
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        color:
                                                            theme.primaryColor,
                                                        width: 1.5)),
                                                child: TextFormField(
                                                  controller: controller.feedbackController,
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText:
                                                          "Write your commnet here ..."),
                                                  maxLines: 3,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Center(
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Color(0xff005271),
                                                          padding:
                                                              EdgeInsets.all(
                                                                  23)),
                                                  onPressed: () async{
                                                   await controller.cusomerAPI();
                                                    Get.back();

                                                  },
                                                  child: Text(
                                                    CT.submit,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                    else{
                                      await controller.cusomerAPI();
                                    }
                                  },
                                  value: controller.selectedValue,
                                  items: controller.Items.map<
                                      DropdownMenuItem<String>>((value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              )
                              else
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          RatingBarIndicator(
                                            rating:double.parse(controller.getBookingDetailsData.value!.booking!.customerRating!.toString()),
                                            itemBuilder: (context, index) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            itemCount: 5,
                                            itemSize: 20.0,
                                            direction: Axis.horizontal,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("${double.parse(controller.getBookingDetailsData.value!.booking!.customerRating!.toString())}/5"),
                                          ),

                                        ],

                                      ),

                                      Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),

                                        ),
                                        child: Text(
                                        controller.getBookingDetailsData.value!.booking!.customerFeedback!.toString(),
                                          maxLines: 5,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(fontSize: 18),
                                          overflow: TextOverflow.ellipsis,
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
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        }));
  }

  Container DateTime(BuildContext context,double fem, double ffem,String heading,String text) {
    return Container(

      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
      width: MediaQuery.sizeOf(context).width*0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // datetimexHo (293:1876)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
            width: double.infinity,
            child: Text(
             heading,
              textAlign: TextAlign.left,
              style: TextThemeStyle.displayMedium(fontSize: MediaQuery.sizeOf(context).width*0.034),
            ),
          ),
          Text(
            text,
            style: TextThemeStyle.bodyLarge(fontSize: MediaQuery.sizeOf(context).width*.04),
          ),
        ],
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
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Image(
        image: AssetImage('assets/images/logo.png'),
        height: 40,
        width: 52.35,
      ),
      actions: [
        Image(
          image: AssetImage('assets/images/notification.png'),
          height: 30,
          width: 30,
        ),
        SizedBox(
          width: 30 * fem,
        ),
      ],
    );
  }
}
