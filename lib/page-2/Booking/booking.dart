import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/bookingChatModal.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/page-2/Booking/BookingController.dart';
import 'package:myapp/page-2/Booking/booking.dart';
import 'package:myapp/utils.dart';

import '../notification-list.dart';

class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BookingController _controller = Get.put(BookingController());
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        appBar: Appbar(context, fem),
        body: Obx(() {
          return _controller.BookingData.value.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                  child: Column(


                      children: [
                        Container(
                          // frame63mih (605:1341)

                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
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
                                        'assets/page-2/images/mingcute-paper-line-XhT.png',
                                        width: 30 * fem,
                                        height: 30 * fem,
                                      ),
                                    ),
                                    Text(
                                      'Booking',
                                      style: SafeGoogleFont(
                                        'Noto Sans',
                                        fontSize: 24 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3625 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
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
                             Obx(() {

                               return _controller.BookingLength.value==0?
                                   Center(child: Container(
                                     margin: EdgeInsets.only(top: 250*fem),
                                     child: Text("You haven't made your first booking yet!",style: TextStyle( color: ThemeColortDark,
                                       fontFamily: "Nunito",
                                       fontSize: 16,
                                       fontWeight: FontWeight.w400,),),
                                   ),)
                                   :
                                 Container(
                                 height:
                                 MediaQuery.of(context).size.height * 0.74,
                                 child: ListView.builder(
                                   itemCount: _controller.BookingLength.value,

                                   itemBuilder: (context, index) {

                                     return bookingChatModal(
                                       id: _controller
                                           .BookingData.value['bookings']
                                       [index]['booking_id']??'',
                                       fem: fem,
                                       ffem: ffem,
                                       name: _controller
                                           .BookingData.value['bookings']
                                       [index]['vendordetails']??
                                           'Unknown',
                                       image:_controller
                                           .BookingData.value['bookings']
                                       [index]['vendordetails']??
                                       'assets/page-2/images/Default Profile.png',
                                       duration: _controller
                                           .BookingData.value['bookings']
                                       [index]['booking_start_date'] ??
                                           '',
                                       time: _controller
                                           .BookingData.value['bookings']
                                       [index]['booking_start_time'] ??
                                           '',
                                       date: _controller
                                           .BookingData.value['bookings']
                                       [index]['booking_end_time'] ??
                                           '',
                                       status: _controller
                                           .BookingData.value['bookings']
                                       [index]['vendordetails']??'!Booking not confirmed',
                                       statusColor: Color(0xffdff4ff),
                                       statusheight: 135,
                                       textColor: ThemeColortDark,
                                     );
                                   },
                                 ),
                               );
                             }),
                            ],
                          ),
                        ),
                      ]));
        }));
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
          image: AssetImage('assets/page-2/images/logo.png'),
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
            image: AssetImage('assets/page-2/images/notification.png'),
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
