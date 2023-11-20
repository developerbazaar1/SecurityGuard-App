import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/NextPageButtonModal.dart';
import 'package:myapp/Modals/chatModal.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/page-2/ConfirmDetails/ConfirmDetailsController.dart';
import 'package:myapp/page-2/HomeScreen/HomeScreen.dart';
import 'package:myapp/page-2/Payment/payment-page.dart';
import 'package:myapp/page-2/GuardDescription/guard-description-page.dart';
import 'package:myapp/page-2/homePage/controller.dart';
import 'package:myapp/page-2/notification-list.dart';
import 'package:myapp/utils.dart';

class ConfirmDetails extends StatelessWidget {
  HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    print(homePageController.searchController.value.text);
    print(homePageController.selectedValue.id.toString());
    print(homePageController.startdateValue);
    print(homePageController.enddateValue.value);
    print(homePageController.startdateValue1);
    print(homePageController.enddateValue1);
    print(homePageController.startdateValue2);
    print(homePageController.enddateValue2);
    print(homePageController.startselectedTime.value.hour);
    print(homePageController.startselectedTime1.value.hour);
    print(homePageController.startselectedTime2.value.hour);
    print(homePageController.endselectedTime.value.hour);
    print(homePageController.endselectedTime1.value.hour);
    print(homePageController.endselectedTime2.value.hour);

    print(homePageController.selectedValue.charge.toString());
    var totlecharge = int.parse(homePageController.selectedValue.charge);
    var totalamount = homePageController.formatedHour;
    var totle = totalamount * totlecharge;
    print(homePageController.formatedTime1.value ?? '');
    print(homePageController.formatedTime2.value);
    ConfirmDetailsController confirmDetailsgeController = Get.put(
        ConfirmDetailsController(
            booking_start_date: homePageController.startdateValue.value,
            booking_end_date: homePageController.enddateValue.value,
            booking_start_time:
                homePageController.startselectedTime.value.hour.toString(),
            booking_end_time:
                homePageController.endselectedTime.value.hour.toString(),
            service_charges: homePageController.selectedValue.charge.toString(),
            booking_total_amount: totle.toString(),
            service_id: homePageController.selectedValue.id.toString(),
            booking_hours: homePageController.formatedTime.value,
            location: homePageController.searchController.value.text,
            booking_start1_date: homePageController.startdateValue1.value,
            booking_start2_date: homePageController.startdateValue2.value,
            booking_end1_date: homePageController.enddateValue1.value,
            booking_end2_date: homePageController.enddateValue2.value,
            booking_start1_time:
                homePageController.startselectedTime1.value.hour.toString(),
            booking_start2_time:
                homePageController.startselectedTime2.value.hour.toString(),
            booking_end1_time:
                homePageController.endselectedTime1.value.hour.toString(),
            booking_end2_time:
                " ${homePageController.endselectedTime2.value.hour.toString()}:${homePageController.endselectedTime2.value.minute.toString()}"));

    var finaltotleamount = (homePageController.formatedHour.value *
            homePageController.duration.inDays) +
        (homePageController.formatedHour1.value *
            homePageController.duration1.inDays) +
        (homePageController.formatedHour2.value *
            homePageController.duration2.inDays);
    return Scaffold(
      appBar: Appbar(context, fem),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Container(

          // frame63YwB (605:1126)

          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(bottom: 10),
                      // frame52Htm (605:1127)
            
                      width: double.infinity,
                      height: 43 * fem,
            
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Confirm Your Details',
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
                    SizedBox(
                      height: 20,
                    ),
                    LayoutBuilder(builder: (context, snapshot) {
                      return Container(
                        margin: EdgeInsets.only(left: 23, right: 23),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        // height:MediaQuery.of(context).size.height*0.6,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: ThemeColorBackgroundBottomsheet,
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Booking Service:',
                              style: confirmHeading,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              homePageController.selectedValue.title ?? '',
                              style: confirmtext,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Address:',
                              style: confirmHeading,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              homePageController.searchController.value.text,
                              style: confirmtext,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Booking Date:',
                                  style: confirmHeading,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                bookingdate(homePageController
                                    .startdateValue.value,homePageController
                                    .enddateValue.value),
                              ],
                            ),
                            SizedBox(
                              height: 15*fem,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
            
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Booking Time:',
                                      style: confirmHeading,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    bookingdate(homePageController.startselectedTime.value.hour.toString()+':'+homePageController.startselectedTime.value.minute.toString(),
                                        homePageController.endselectedTime.value.hour.toString()+':'+homePageController.endselectedTime.value.minute.toString())
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Booking Hours:',
                                      style: confirmHeading,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      (homePageController.formatedHour.value *
                                                  homePageController
                                                      .duration.inDays)
                                              .toString() +
                                          ' Hours',
                                      style: confirmtext,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10 * fem,
                            ),
                            Obx(() {
                              print(
                                  '${homePageController.startdateValue1} first date');
            
                              return homePageController.startdateValue1 == null ||
                                      homePageController.startdateValue1 == ''
                                  ? SizedBox()
                                  : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 0),
                                          width: MediaQuery.of(context).size.width,
                                          child: CustomPaint(
                                            painter: DashedBorderPainter(color: ThemeColorBottomBorder),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10*fem,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Booking Date:',
                                            style: confirmHeading,
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          bookingdate(homePageController
                                              .startdateValue1.value,homePageController
                                              .enddateValue1.value),
                                        ],
                                      ),
                                      SizedBox(height: 10*fem,),
                                      Container(
                                          margin: EdgeInsets.only(bottom: 10 * fem),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Booking Time:',
                                                    style: confirmHeading,
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  bookingdate(homePageController.startselectedTime1.value.hour.toString()+':'+homePageController.startselectedTime1.value.minute.toString(),
                                                      homePageController.endselectedTime1.value.hour.toString()+':'+homePageController.endselectedTime1.value.minute.toString()),
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Booking Hours:',
                                                    style: confirmHeading,
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    (homePageController.formatedHour1
                                                                    .value *
                                                                homePageController
                                                                    .duration1.inDays)
                                                            .toString() +
                                                        ' Hours',
                                                    style: confirmtext,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 0),
                                          width: MediaQuery.of(context).size.width,
                                          child: CustomPaint(
                                            painter: DashedBorderPainter(color: ThemeColorBottomBorder),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10*fem,),
                                    ],
                                  );
                            }),
                            Obx(() {
                              print(
                                  ' ${homePageController.startdateValue2.value} floating action button 4');
                              return homePageController.startdateValue2 == null ||
                                      homePageController.startdateValue2 == ''
                                  ? SizedBox()
                                  : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Booking Date:',
                                            style: confirmHeading,
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          bookingdate(homePageController
                                              .startdateValue2.value,homePageController
                                              .enddateValue2.value),
                                        ],
                                      ),
                                      SizedBox(height: 10*fem,),
                                      Container(
                                          margin: EdgeInsets.only(bottom: 10 * fem),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Booking Time:',
                                                    style: confirmHeading,
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  bookingdate(homePageController.startselectedTime2.value.hour.toString()+':'+homePageController.startselectedTime2.value.minute.toString(),
                                                      homePageController.endselectedTime2.value.hour.toString()+':'+homePageController.endselectedTime2.value.minute.toString()),
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Booking Hours:',
                                                    style: confirmHeading,
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    (homePageController.formatedHour2
                                                                    .value *
                                                                homePageController
                                                                    .duration2.inDays)
                                                            .toString() +
                                                        ' Hours',
                                                    style: confirmtext,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 0),
                                          width: MediaQuery.of(context).size.width,
                                          child: CustomPaint(
                                            painter: DashedBorderPainter(color: ThemeColorBottomBorder),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10*fem,),
                                    ],
                                  );
                            }),
                            Container(
                              // autogroupkcxhkzM (TskafPky4JWL1fuVp8kCxh)
                              padding: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 2 * fem),
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(

                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 1 * fem),

                                        child: Text(
                                          'Price:',
                                          textAlign: TextAlign.left,
                                          style: SafeGoogleFont(
                                            'Nunito',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.3625 * ffem / fem,
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
                                            fontWeight: FontWeight.w600,
                                            height: 1.3639999628 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                          children: [
                                            TextSpan(
                                              text:
                                                  '$currency${homePageController.selectedValue.charge}',
                                              style: SafeGoogleFont(
                                                'Nunito',
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.3625 * ffem / fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                            TextSpan(
                                              text: '/ Hour',
                                              style: SafeGoogleFont(
                                                'Nunito',
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3625 * ffem / fem,
                                                color: Color(0xff3a3a3a),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Total Hours:',
                                        style: confirmHeading,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          "$currency$finaltotleamount ",
                                          style: SafeGoogleFont(
                                            'Nunito',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame73k97 (293:1881)
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      "$currency$finaltotleamount X $totlecharge",
                                      style: SafeGoogleFont(
                                        'Nunito',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3625 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // Yqf (293:1883)
                                    '$currency'+(finaltotleamount*totlecharge).toString(),
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff000000),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'Total:',
                                      style: SafeGoogleFont(
                                        'Nunito',
                                        fontSize: 24 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3625 * ffem / fem,
                                        color: Color(0xff005271),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // Mo7 (293:1886)
                                     ' $currency'+(finaltotleamount*totlecharge).toString()
            
                                         ??
                                        '',
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 24 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff005271),
                                    ),
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
                          ],
                        ),
                      );
                    })
                  ],
                ),
                SizedBox(height: 10*fem,),
                Container(
                  // frame50SUZ (367:77)
                  padding: EdgeInsets.fromLTRB(
                      10.5 * fem, 15 * fem, 10.5 * fem, 8 * fem),
                  width: double.infinity,
                  height: 73 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0 * fem, 0 * fem),
                        blurRadius: 7.5 * fem,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NextPageButton(
                        fem: fem,
                        ffem: ffem,
                        buttonText: 'Cancel',
                        function: () {
                          homePageController.firstFloatingButton.value = false;
                          homePageController.secondFloatingButton.value = false;
                          homePageController.formatedHour2.value = 0;
                          homePageController.formatedHour1.value = 0;
                          homePageController.formatedMinute1.value = 0;
                          homePageController.formatedMinute2.value = 0;
                          homePageController.startdateValue1.value = '';
                          homePageController.startdateValue2.value = '';
                          homePageController.enddateValue1.value = '';
                          homePageController.enddateValue2.value = '';
                          homePageController.formattedDate2.value = 'Choose Date';
                          homePageController.formattedDate1.value = 'Choose Date';
                          homePageController.formatedTime1.value = 'Choose';
                          homePageController.formatedTime2.value = 'Choose';
                          homePageController.startselectedTime2.value =
                              TimeOfDay(hour: 00, minute: 00);
                          homePageController.startselectedTime1.value =
                              TimeOfDay(hour: 00, minute: 00);
                          homePageController.endselectedTime1.value =
                              TimeOfDay(hour: 00, minute: 00);
                          homePageController.endselectedTime2.value =
                              TimeOfDay(hour: 00, minute: 00);
            
                          homePageController.floatingButtonValue.value = 0;
                          Navigator.pop(context);
                        },
                        BGColor: ThemeColorChatColor,
                      ),
                      Obx(() {
                        return confirmDetailsgeController.isLoading.value == true
                            ? Center(child: CircularProgressIndicator())
                            : Container(
                                height: 53 * fem,
                                width: 170 * fem,
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                child: TextButton(
                                  onPressed: () {
                                    confirmDetailsgeController.BookingStoreAPI();
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                      color: ThemeColortDark,
                                      borderRadius:
                                          BorderRadius.circular(10 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Confirm',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 24 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                      })
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  RichText bookingdate(firstdate, seconddate) {
    return RichText(
                                  text: TextSpan(
                                      text:  firstdate??
                                          '',
                                      style: confirmHeading,
                                      children: [
                                        TextSpan(
                                            text: ' To ', style: confirmtext),
                                        TextSpan(
                                            text: seconddate??'',
                                            style: confirmHeading)
                                      ]),
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
