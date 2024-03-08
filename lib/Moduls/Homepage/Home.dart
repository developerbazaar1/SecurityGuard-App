import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myapp/Modals/buttonModal.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/Moduls/payment-done.dart';

import '../../Modals/DashedBorderPainter.dart';
import '../../utils.dart';
import '../notification-list.dart';
import 'HomePageController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    HomePageController homePageController = Get.put(HomePageController());
    Future.delayed(Duration(seconds: 3), () {
      showAlertDialog(context);
    });


    return Scaffold(
        appBar: Appbar(context, fem),
        body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/page-2/images/finalImage/background.gif',
                ),
              ),
            ),
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 150.0 * fem,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: kBackgroundBottomsheet,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30 * fem),
                                topLeft: Radius.circular(30 * fem))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AnimatedSize(
                              curve: Curves.easeIn,
                              duration: Duration(milliseconds: 500),
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                  kOnlinebuttonBgColor,
                                  borderRadius:
                                  BorderRadius.circular(30 * fem),
                                ),
                                height: 53 * fem,
                                width:
                                244.0 *
                                    fem,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 2)),
                                    onPressed: () {
                                      homePageController.updateSize();



                                    },
                                    child: Center(
                                      child: Text(
                                        " You're Online",
                                        style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontSize: 32.0*
                                              ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.3625 * ffem / fem,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                              ),
                            ),

                            Container(
                                margin:
                                EdgeInsets.only(left: 15, right: 15),
                                padding:
                                EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  'You will receive a notification when someone hires your security services.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Nunito',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ))
                          ],
                        ))
                  ]),
            )));
  }

  AppBar Appbar(BuildContext context, double fem) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Container(
            decoration: BoxDecoration(
                border: Border(
          bottom: BorderSide(
            color: kAppbarUnderline, // Choose your border color
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
          image: AssetImage('assets/page-2/images/finalImage/logo.png'),
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
            image:
                AssetImage('assets/page-2/images/finalImage/notification.png'),
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
  void showAlertDialog(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    showDialog(context: context, builder: (context) => SimpleDialog(
      backgroundColor: kBackgroundBottomsheet,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
      ),
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                  'assets/page-2/images/finalImage/SecuritGuards.png'),
              height: 30,
              width: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'SECURITY GUARD ',
              style: TextStyle(
                color: kThemeColorDark,
                fontFamily: 'Nunito',
                fontSize: 24,
                fontWeight:
                FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      children: [


        SizedBox(
          width: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20,top: 15,right: 20,),
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment
                .start,
            crossAxisAlignment:
            CrossAxisAlignment
                .start,
            children: [
              Text(
                'Date & Time:',
                textAlign:
                TextAlign.start,
                style: requestTitle,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Monday, Oct 24',
                style: requestSubtitle,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Working Hours:',
                textAlign:
                TextAlign.start,
                style: requestTitle,
              ),
              SizedBox(
                height:2,
              ),
              Text(
                '5 Hours ',
                style: requestSubtitle,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Address',
                textAlign:
                TextAlign.start,
                style: requestTitle,
              ),
              SizedBox(
                height:2,
              ),
              Text(
                '452010 ',
                style: requestSubtitle,
              ),
              SizedBox(
                height: 10,
              ),
              // Text(
              //   'Phone No.',
              //   textAlign:
              //   TextAlign.start,
              //   style: requestTitle,
              // ),
              // SizedBox(
              //   height: 2,
              // ),
              // Text(
              //   '90009-90009',
              //   style: requestSubtitle,
              // ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Price:',
                textAlign:
                TextAlign.start,
                style: requestTitle,
              ),
              RichText(text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                  ),
                  text:'£12.99',children: [
                TextSpan(text: ' / Hour',style: requestSubtitle)

              ]
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('£12.99 × 5 Hours', style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                  ),),
                  Text('£64.95', style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                  ),)
                ],
              ),

            ],
          ),
        ),
        SizedBox(height: 10*fem,),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            child: CustomPaint(
              painter: DashedBorderPainter(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total:',style: TextStyle(
                color: kThemeColorDark,
                fontFamily: 'Nunito',
                fontSize: 24,

                fontWeight: FontWeight.w700,

              ),),
              Text('£64.95',style: TextStyle(
                color: kThemeColorDark,
                fontFamily: 'Nunito',
                fontSize: 24,

                fontWeight: FontWeight.w700,

              ),)
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
        SizedBox(height: 10,),

        Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),

                    )
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PaymentDone(),));
                },
                child: buttomModal(fem: fem,ffem: ffem,bgColor: kThemeColorDark,margin: 37,text: 'Confirm Request',)))
      ],
    ),);
  }

}
