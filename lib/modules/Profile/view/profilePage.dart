import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/modules/HomeScreen/controller/HomeScreenController.dart';
import 'package:myapp/modules/PrivacyPolicy/view/privacyPolicy-.dart';

import '../../../core/contants/image_constant.dart';
import '../../../core/contants/text_constant.dart';
import '../../../core/utils/utils.dart';
import '../../../routes/app_routes.dart';
import '../../AppSetting/view/appSetting.dart';
import '../../HomeScreen/view/HomeScreen.dart';
import '../../helpSupport/view/helpSupport.dart';
import '../../notification/view/notification-list.dart';
import '../../termCondition/view/termsCondition.dart';
import '../../editProfile/view/editProfilePage.dart';
import '../controller/ProfileController.dart';

class ProfilePage extends GetView<ProfileController> {

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return


      Scaffold(
      appBar: Appbar(context, fem),
      body: Obx((){
        if (controller.getUserData.value == null) {
          return Center(
          child: CircularProgressIndicator(),
        );
        } else {
          return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // frame63wx5 (264:584)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 15 * fem, 0 * fem, 78 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // component54Wu (285:686)
                        padding: EdgeInsets.fromLTRB(
                            25 * fem, 0 * fem, 68 * fem, 0 * fem),
                        width: double.infinity,
                        height: 102 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ellipse3AK3 (303:2127)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 25 * fem, 0 * fem),
                              width: 100 * fem,
                              height: 100 * fem,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(50 * fem),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:  controller.getUserData.value!.user!.profileImage != null
                                      ?NetworkImage(
                                      "http://pragya.dbtechserver.online/security/public/${controller.getUserData.value!.user!.profileImage!}"

                                  ):AssetImage(CI.imgDummyProfile) as ImageProvider,
                                ),
                              ),
                            ),
                            Container(
                              // frame71oso (285:687)
                              width: 175 * fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // frame78mJq (288:710)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // allysonrollinsuvq (285:690)
                                          margin: EdgeInsets.fromLTRB(
                                              0 * fem,
                                              0 * fem,
                                              0 * fem,
                                              0 * fem),
                                          child: Text(
                                            controller.getUserData
                                                .value!.user!.name!,
                                            style: SafeGoogleFont(
                                              'Noto Sans',
                                              fontSize: 24 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.3625 * ffem / fem,
                                              color: Color(0xff005271),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 4,),
                                        Container(
                                          // allysongmailcomBtM (288:709)
                                          width: double.infinity,
                                          child: Text(
                                            controller.getUserData
                                                .value!.user!.email!,
                                            textAlign: TextAlign.left,
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
                                  ),

                                  TextButton(
                                    // frame3282u (285:691)
                                    onPressed: () {
                                      if(controller.getUserData
                                          .value!=null) {
                                        Get.toNamed(AppRoutes.edit,
                                          arguments: {
                                        "name":controller.getUserData
                                            .value!.user!.name!.toString(),
                                        "email":controller.getUserData
                                          .value!.user!.email.toString(),
                                        "phone":controller.getUserData
                                          .value!.user!.phone!.toString(),
                                        "address":controller.getUserData
                                            .value!.user!.address!.toString(),
                                            if(controller.getUserData
                                                .value!.user!.profileImage!=null)
                                            "image":controller.getUserData
                                                .value!.user!.profileImage!.toString()??''




                                      }
                                      );
                                      }
                                    },
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: 123 * fem,
                                      height: 32 * fem,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff005271)),
                                        borderRadius:
                                        BorderRadius.circular(10 * fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          CT.edit_profile,
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Nunito',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.3625 * ffem / fem,
                                            color: Color(0xff005271),
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
                      Container(
                        // autogroupez8zPjX (TskYkXn2MXejJAjk4vEz8Z)
                        padding: EdgeInsets.fromLTRB(
                            20 * fem, 20 * fem, 20 * fem, 0 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ProfileSettingModal(
                              fem: fem,
                              ffem: ffem,
                              text: CT.my_bookings,
                              onTap:() {
                                currentIndex.value= 2;
                               // Get.offNamed(AppRoutes.homeScreen,arguments: 2);
                              }
                            ),
                            SizedBox(
                              height: 20 * fem,
                            ),
                            ProfileSettingModal(
                              fem: fem,
                              ffem: ffem,
                              text: CT.my_chats,
                              onTap:  () {
                                currentIndex.value= 1;
                              //  Get.offNamed(AppRoutes.homeScreen,arguments: 1);
                              }
                            ),
                            SizedBox(
                              height: 20 * fem,
                            ),
                            ProfileSettingModal(
                              fem: fem,
                              ffem: ffem,
                              text: CT.app_settings,
                              onTap:   () {  Get.toNamed(AppRoutes.appSetting);}
                            ),
                            SizedBox(
                              height: 20 * fem,
                            ),
                            ProfileSettingModal(
                              fem: fem,
                              ffem: ffem,
                              text: CT.tnc,
                              onTap: () {Get.toNamed(AppRoutes.termsCondition);}
                            ),
                            SizedBox(
                              height: 20 * fem,
                            ),
                            ProfileSettingModal(
                              fem: fem,
                              ffem: ffem,
                              text: CT.privacy_policy,
                              onTap: () {Get.toNamed(AppRoutes.privacyPolicy);}
                            ),
                            SizedBox(
                              height: 20 * fem,
                            ),
                            ProfileSettingModal(
                              fem: fem,
                              ffem: ffem,
                              text: CT.hns,
                              onTap:() {Get.toNamed(AppRoutes.helpSupport);}
                            ),
                            SizedBox(
                              height: 20 * fem,
                            ),
                            Obx(() {
                              return controller.isLoading.value
                                  ? Center(
                                  child: CircularProgressIndicator())
                                  : TextButton(
                                onPressed: () {
                                  controller.logoutApiCalling();
                                },
                                child: Container(
                                  // frame372am (288:774)
                                  padding: EdgeInsets.fromLTRB(
                                      20 * fem,
                                      5.83 * fem,
                                      26.67 * fem,
                                      5.83 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff000000),
                                    borderRadius:
                                    BorderRadius.circular(
                                        10 * fem),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem,
                                            0 * fem,
                                            0 * fem,
                                            0 * fem),
                                        child: Text(
                                          CT.logout,
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Nunito',
                                            fontSize: 24 * ffem,
                                            fontWeight:
                                            FontWeight.w600,
                                            height:
                                            1.3625 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // uilsignoutzR7 (292:781)

                                          child: Icon(
                                            Icons.logout,
                                            size: 40.33 * fem,
                                            color: Colors.white,
                                          )),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ],
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
      })





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

class ProfileSettingModal extends StatelessWidget {
  const ProfileSettingModal({
    super.key,
    required this.fem,
    required this.ffem,
    required this.text,
    required this.onTap,
  });

  final double fem;
  final double ffem;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(1.5 * fem, 0 * fem, 1.5 * fem, 0 * fem),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding:
              EdgeInsets.fromLTRB(25 * fem, 10 * fem, 27.08 * fem, 10 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20 * fem),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0 * fem, 0 * fem),
                blurRadius: 2.5 * fem,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // mybookingsNLZ (288:739)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                child: Text(
                  text,
                  style: SafeGoogleFont(
                    'Nunito',
                    fontSize: 18 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.3625 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                  // fluentiosarrow24filledFfF (288:740)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0.01 * fem, 0 * fem, 0 * fem),
                  width: 8.76 * fem,
                  height: 16.68 * fem,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20.68,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
