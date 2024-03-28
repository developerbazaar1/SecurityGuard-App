import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/bookingChatModal.dart';
import 'package:myapp/Modals/constants.dart';

import '../../../Modals/DateTimeMethods.dart';
import '../../../core/contants/image_constant.dart';
import '../../../core/contants/text_constant.dart';
import '../../../core/contants/text_style.dart';
import '../../../core/utils/utils.dart';
import '../../notification/view/notification-list.dart';
import '../controller/bookingController.dart';

class Booking extends GetView<bookingController> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        appBar: Appbar(context, fem),
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame63mih (605:1341)

                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // frame65V8u (605:1342)
                          margin: EdgeInsets.fromLTRB(
                              20 * fem, 10 * fem, 20 * fem, 0 * fem),

                          width: double.infinity,
                          height: 43 * fem,
                          decoration: BoxDecoration(),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                // mingcutepaperlineZPf (605:1343)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 1.5 * fem, 5 * fem, 0 * fem),
                                width: 30 * fem,
                                height: 30 * fem,
                                child: Image.asset(
                                  CI.imgNotePepper,
                                  width: 30 * fem,
                                  height: 30 * fem,
                                ),
                              ),
                              Text(
                                CT.booking,
                                style: TextThemeStyle.headlineLarge(
                                    FontSize: MediaQuery.sizeOf(context).width *
                                        0.06),
                              ),
                            ],
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
                          height: MediaQuery.sizeOf(context).height * 0.75,
                          child: ListView.separated(
                              itemBuilder: (context, index) {
                                controller.formateTime.value =
                                    DateTimeMethods.TimeFormate(controller
                                        .getBookingsData
                                        .value!
                                        .bookings![index]
                                        .bookingStartTime!
                                        .toString());
                                controller.formateDate.value =
                                    DateTimeMethods.DateFormate(controller
                                        .getBookingsData
                                        .value!
                                        .bookings![index]
                                        .bookingStartDate!
                                        .toString());

                                return bookingChatModal(
                                  fem: fem,
                                  ffem: ffem,
                                  name: 'Alba Montgomery',
                                  duration:  controller.formateDate.value,
                                  time: controller.formateTime.value,
                                  status: 'Canceled',
                                  statusColor: Color(0xff898989),
                                  textColor: Colors.white,
                                  image: 'assets/images/ellipse-2-bg-7Eh.png',
                                  statusheight: 73,
                                  booking_id: controller.getBookingsData.value!
                                      .bookings![index].bookingId!,
                                );
                              },
                              separatorBuilder: (context, index) {
                                return Divider(
                                  thickness: 0.5,
                                  color: ThemeColorDivide,
                                );
                              },
                              itemCount: controller
                                  .getBookingsData.value!.bookings!.length),
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 20),
                        //   width: double.infinity,
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: [
                        //       bookingChatModal(
                        //         fem: fem,
                        //         ffem: ffem,
                        //         name: 'Allyson Rollins',
                        //         image:
                        //             'assets/images/ellipse-2-bg-8cR.png',
                        //         duration: 'Monday, Oct 24',
                        //         time: '10:45 AM',
                        //         date: '30 mins before',
                        //         status: 'Payment in process',
                        //         statusColor: Color(0xffdff4ff),
                        //         statusheight: 135,
                        //         textColor: ThemeColortDark,
                        //       ),
                        //       Divider(
                        //         thickness: 0.5,
                        //         color: ThemeColorDivide,
                        //       ),
                        //       bookingChatModal(
                        //           fem: fem,
                        //           ffem: ffem,
                        //           name: 'Alba Montgomery',
                        //           duration: 'Sunday, Aug 24',
                        //           time: '08:22 PM',
                        //           status: 'Canceled',
                        //           statusColor: Color(0xff898989),
                        //           textColor: Colors.white,
                        //           image:
                        //               'assets/images/ellipse-2-bg-7Eh.png',
                        //           date: '12/08/2023',
                        //           statusheight: 73),
                        //       Divider(
                        //         thickness: 0.5,
                        //         color: ThemeColorDivide,
                        //       ),
                        //       bookingChatModal(
                        //         textColor: ThemeColortDark,
                        //           fem: fem,
                        //           ffem: ffem,
                        //           name: 'Reuben Rios',
                        //           duration: 'Thursday, July 22',
                        //           time: '03:59 PM',
                        //           status: 'Confirmed',
                        //           statusColor: Color(0xff00ff19),
                        //           image:
                        //               'assets/images/ellipse-2-bg-ved.png',
                        //           date: '20/07/2023',
                        //           statusheight: 81)
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ])));
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
      leadingWidth: 130,
      leading: Container(
        margin: EdgeInsets.only(left: 0, top: 5, bottom: 5),
        child: Image(
          image: AssetImage('assets/images/logo.png'),
          height: 40,
          width: 52.35,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationList()));
          },
          icon: Image(
            image: AssetImage('assets/images/notification.png'),
            height: 30,
            width: 30,
          ),
        ),
        SizedBox(
          width: 30 * fem,
        ),
      ],
    );
  }
}
