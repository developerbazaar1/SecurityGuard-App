import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

import 'package:interval_time_picker/interval_time_picker.dart';

import 'package:myapp/modules/Loading/searching.dart';
import 'package:myapp/theme/theme_helper.dart';

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../core/contants/image_constant.dart';
import '../../../core/contants/text_constant.dart';
import '../../../core/utils/utils.dart';
import '../../dogSecurityDescription/view/dogSecurity.dart';
import '../../notification/view/notification-list.dart';
import '../../securityGuard/view/securityGuard.dart';
import '../../SupervisorDescription/view/supervisor.dart';
import '../controller/homeController.dart';

import 'package:myapp/Modals/SecurityList.dart';
import 'package:myapp/Modals/constants.dart';

const TextStyle pickerTextStyle = TextStyle(
    color: Color(0xFF101010), fontSize: 20, fontWeight: FontWeight.w600);

class Home extends StatelessWidget {
  bool? textSubmitted;
  HomePageController homePageController = Get.put(HomePageController());

  bool? isButtonTaped;

  @override
  Widget build(BuildContext context) {




    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        appBar: Appbar(context, fem),
        body: Obx(() {
          return homePageController.getServicesData.value == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        CI.imgBackgroundGIF,
                      ),
                    ),
                  ),
                  child: Container(child: Obx(
                    () {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Form(
                            key: homePageController.formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 25, left: 12, right: 12, bottom: 10),
                                  padding: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white),
                                  child: TextFormField(
                                    style: searchTextStyle,
                                    keyboardType: TextInputType.text,

                                    onSaved: (value) {
                                      print(value);
                                    },
                                    validator: (value) {
                                      if (value!.isEmpty || value == null) {
                                        homePageController
                                            .isLocationEmpty.value = true;
                                      } else {
                                        homePageController
                                            .isLocationEmpty.value = false;
                                      }
                                      return null;
                                    },

                                    onFieldSubmitted: (value) {
                                      if (homePageController.searchController
                                              .value.text.isEmpty ||
                                          homePageController.searchController.value.text.isEmpty) {
                                        if (homePageController.formKey.currentState!.validate()) {
                                          homePageController
                                              .textSubmitted.value = false;
                                          homePageController
                                              .isLocationEmpty.value = true;
                                        }
                                      } else {
                                        homePageController.textSubmitted.value =
                                            true;
                                        homePageController
                                            .isLocationEmpty.value = false;
                                        // homePageController.ServicesAPI();
                                      }
                                    },
                                    controller: homePageController
                                        .searchController.value,
                                    textAlign: TextAlign.start,

                                    // controller: _searchController,
                                    // onChanged: _handleSearch,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 13),
                                      prefixIcon: Icon(
                                        Icons.location_on_outlined,
                                        color: ThemeColor,
                                        weight: baseWidth,
                                      ),
                                      hintText: CT.security_need,
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          textBaseline:
                                              TextBaseline.alphabetic),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Obx(
                                  () {
                                    return homePageController
                                                .isLocationEmpty.value ==
                                            true
                                        ? Container(
                                            margin: EdgeInsets.only(left: 30),
                                            child: Text(
                                              CT.choose_service,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ThemeColorError,
                                                fontFamily: 'Nunito',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        : SizedBox();
                                  },
                                ),
                                if (homePageController.textSubmitted.value ==
                                    true)
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 0,
                                        left: 12,
                                        right: 12,
                                        bottom: 10),
                                    padding:
                                        EdgeInsets.only(left: 25, right: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        Image(
                                          image:
                                              AssetImage(CI.imgSecuritySymbol),
                                          height: 20,
                                          width: 20,
                                          color: ThemeColortDark,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 20),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.65 *
                                              fem,
                                          child:
                                              DropdownButtonFormField<String>(
                                            dropdownColor: Colors.white,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                            ),
                                            icon: const Icon(
                                                Icons.arrow_drop_down_outlined),
                                            hint: Text(CT.choose_service),
                                            elevation: 16,
                                            isExpanded: true,
                                            style: const TextStyle(
                                                color: Colors.black),
                                            onChanged: (String? value) {
                                              homePageController.selectedValue =
                                                  value!;
                                              print(homePageController
                                                  .selectedValue);
                                              homePageController
                                                  .isSecurityChoosed
                                                  .value = true;
                                            },
                                            value: homePageController
                                                .selectedValue,
                                            items: homePageController
                                                .Items
                                                .map<DropdownMenuItem<String>>(
                                                    (value) {
                                              return DropdownMenuItem<String>(
                                                value: value.serviceTitle,
                                                child: Text(value.serviceTitle!),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (homePageController
                                        .isSecurityChoosed.value ==
                                    true)
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Center(
                                            child: Container(
                                              margin: EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white,
                                              ),
                                              height: 355 * fem,
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Obx(
                                                        () {
                                                          return homePageController
                                                                      .isDateEmpty
                                                                      .value ==
                                                                  true
                                                              ? Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              30),
                                                                  child: Text(
                                                                    CT.please_choose_service,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style:
                                                                        TextStyle(
                                                                      color:
                                                                          ThemeColorError,
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                  ),
                                                                )
                                                              : SizedBox();
                                                        },
                                                      ),
                                                      Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 15),
                                                          child: TextButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child: Text(
                                                                CT.close,
                                                                style:
                                                                    searchTextStyle,
                                                              ))),
                                                    ],
                                                  ),
                                                  Container(
                                                    color: Colors.white,
                                                    height: 240 * fem,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                    child: SfDateRangePicker(
                                                      selectionTextStyle: TextStyle(color: Colors.white),


                                                      minDate: DateTime.now(),
                                                      controller:
                                                          homePageController
                                                              .controller.value,
                                                      onSelectionChanged:
                                                          homePageController
                                                              .onSelectionChanged,
                                                      selectionMode:
                                                          DateRangePickerSelectionMode
                                                              .range,
                                                      initialSelectedRange:
                                                          PickerDateRange(
                                                              DateTime.now().subtract(
                                                                  const Duration(
                                                                      days: 4)),
                                                              DateTime.now().add(
                                                                  const Duration(
                                                                      days:
                                                                          3))),
                                                    ),
                                                  ),
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        homePageController
                                                            .updateDate();
                                                        if (homePageController
                                                            .range
                                                            .value
                                                            .isNotEmpty) {
                                                          homePageController
                                                              .isDateEmpty
                                                              .value = false;

                                                          homePageController
                                                              .isDateSelected
                                                              .value = true;
                                                          Navigator.pop(
                                                              context);
                                                        } else {
                                                          homePageController
                                                              .isDateEmpty
                                                              .value = true;
                                                        }
                                                      },
                                                      child: Text(
                                                        CT.ok,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ); // Call the function to build the dialog
                                        },
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 12, right: 12, bottom: 10),
                                      padding: EdgeInsets.only(
                                          left: 15, top: 10, bottom: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Image(
                                            image:
                                                AssetImage(CI.imgCalenderIcon),
                                            height: 25,
                                            width: 25,
                                            color: ThemeColortDark,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),

                                          // Add some spacing
                                          Obx(() => Text(
                                                homePageController
                                                    .formattedDate.value
                                                    .toString(),
                                                style: searchTextStyle,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                if (homePageController.isDateSelected.value ==
                                    true)
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return buildCustomizableTimePickerWidget(
                                              context); // Call the function to build the dialog
                                        },
                                      );
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 12, right: 12),
                                      padding: EdgeInsets.only(
                                          left: 15, top: 10, bottom: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Image(
                                            image: AssetImage(CI.imgClock),
                                            height: 25,
                                            width: 25,
                                            color: ThemeColortDark,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),

                                          // Add some spacing
                                          Obx(() {
                                            return Text(
                                              "${homePageController.formatedTime.value} ${CT.hours}",
                                              style: searchTextStyle,
                                            );
                                          })
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.120 *
                                      fem,
                                  width: MediaQuery.sizeOf(context).width,
                                  decoration: BoxDecoration(),
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: homePageController
                                        .getServicesData
                                        .value!
                                        .services!
                                        .length,
                                    itemBuilder: (context, index) => Center(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.44,
                                          margin: EdgeInsets.only(
                                              left: 8, right: 8),
                                          padding: EdgeInsets.only(
                                              left: 8, right: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Obx(() {
                                                    return homePageController
                                                                .getServicesData
                                                                .value !=
                                                            null
                                                        ? Center(
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 10),
                                                              child: Center(
                                                                  child: Image(
                                                                image: NetworkImage(
                                                                    'http://pragya.dbtechserver.online/security/public/${homePageController.getServicesData.value!.services![index].serviceImage}'),
                                                                width: 40,
                                                                height: 40,
                                                              )),
                                                            ),
                                                          )
                                                        : SizedBox();
                                                  }),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(0.0),
                                                        child: InkWell(
                                                          
                                                          onTap: () {

                                                          Get.toNamed(  homePageController.SecurityList[index].function);


                                                          },
                                                          child: Container(
                                                            height: 50,
                                                            width: 50,
                                                            margin:
                                                                EdgeInsets.all(
                                                                    0),
                                                            child: Center(
                                                              child: Image(
                                                                image: AssetImage(
                                                                    CI.imgInfo),
                                                                width: 15,
                                                                height: 15,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ))
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Obx(() {
                                                return homePageController
                                                            .getServicesData
                                                            .value !=
                                                        null
                                                    ? Text(
                                                        homePageController
                                                            .getServicesData
                                                            .value!
                                                            .services![index]
                                                            .serviceTitle
                                                            .toString(),
                                                        style: TextStyle(
                                                          color:
                                                              ThemeColortDark,
                                                          fontFamily: 'Nunito',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )
                                                    : SizedBox(
                                                        child: Text(
                                                            'value not comming'),
                                                      );
                                              }),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      );
                    },
                  )),
                );
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
          image: AssetImage(CI.imgLogo),
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
            image: AssetImage(CI.imgNotification),
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

  Widget buildCustomizableTimePickerWidget(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox.expand(
      // width: 200*fem,
      // margin: EdgeInsets.only(top: 100*fem, bottom: 200*fem, left: 30*fem, right: 30*fem),
      // padding: EdgeInsets.only(top: 20*fem, bottom: 20*fem),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   color: Colors.white,
      // ),
      child: Container(
        margin: EdgeInsets.only(
            top: 150 * fem,
            bottom: MediaQuery.of(context).size.height * 0.5,
            left: 30 * fem,
            right: 30 * fem),
        padding: EdgeInsets.only(top: 20 * fem, bottom: 15 * fem),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return homePageController.isTimeNull.value == true
                    ? Text(
                        CT.please_choose_service,
                        style: TextStyle(
                          color: ThemeColorError,
                          fontFamily: 'Nunito',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    : SizedBox();
              },
            ),
            Obx(() => buildContainer(context, CT.start_time,
                homePageController.startselectedTime.value, true)),
            Obx(() => buildContainer(context, CT.end_time,
                homePageController.endselectedTime.value, false)),
            Container(
              height: 34,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ThemeColortDark,
                      padding: EdgeInsets.all(10)),
                  onPressed: () {



                    if (homePageController.isFirstTimeSelected.value == false ||
                        homePageController.isSecondTimeSelected.value ==
                            false) {
                      homePageController.updateNullTime();
                    } else if (homePageController.hour.value < 10 &&
                        homePageController.selectedValue == CT.dog_unit) {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            buildAlertDialog(CT.minimun_hour_dog),
                      );
                    } else if (homePageController.hour.value < 6 &&
                        homePageController.selectedValue ==
                            CT.door_sia_supervisiors) {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            buildAlertDialog(CT.minimun_hour_supervisor),
                      );
                    } else if (homePageController.hour.value < 8 &&
                        homePageController.selectedValue ==
                            CT.security_sia_guard) {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            buildAlertDialog(CT.minimun_hour_guard),
                      );
                    } else {
                      homePageController.updateFormatedTime();
                      // if (homePageController.isTimeNull.value == false) {
                      Navigator.pop(context);

                      showModalBottomSheet<void>(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {

                          return Container(
                            padding: EdgeInsets.fromLTRB(
                                15 * fem, 40.5 * fem, 15 * fem, 40.5 * fem),
                            width: 393 * fem,
                            height: 339 * fem,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30 * fem),
                                topRight: Radius.circular(30 * fem),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0 * fem, 0 * fem),
                                  blurRadius: 12.5 * fem,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    CI.imgLogo,
                                  ),
                                  height: 100,
                                  width: 100,
                                ),
                                Text(
                                  CT.our_mission,
                                  style: TextStyle(
                                    color: ThemeColortDark,
                                    fontFamily: 'Nunito',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextButton(
                                  // frame30zTB (274:456)
                                  onPressed: () {
                                    homePageController.isTimeNull.value = false;
                                    homePageController.searchController.value
                                        .clear();
                                    homePageController.isSecurityChoosed.value =
                                        false;
                                    homePageController.textSubmitted.value =
                                        false;
                                    homePageController.isDateSelected.value =
                                        false;
                                    homePageController.formatedTime.value =
                                        CT.choose;
                                    //homePageController.selectedValue;
                                    homePageController.formattedDate.value =
                                        CT.choose_date;
                                    homePageController
                                        .isFirstTimeSelected.value = false;
                                    homePageController
                                        .isSecondTimeSelected.value = false;
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Searching(),
                                        ));
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 53 * fem,
                                    child: Container(
                                      // frame326m7 (274:457)
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xff000000),
                                        borderRadius:
                                            BorderRadius.circular(10 * fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          CT.done,
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
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }
                  },
                  //   },
                  child: Text(
                    CT.submit,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }

  AlertDialog buildAlertDialog(String message) {
    return AlertDialog(
      backgroundColor: Colors.white,
      alignment: Alignment.center,
      title: Center(
        child: Text(CT.alert),
      ),
      actions: [
        Center(
            child: Text(message,
                textAlign: TextAlign.center, style: TextStyle(fontSize: 13))),
        SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: ThemeColortDark),
              onPressed: () {
                Get.back();
              },
              child: Text(
                CT.close,
                style: TextStyle(color: Colors.white),
              )),
        )
      ],
    );
  }

  Container buildContainer(BuildContext context, buttontext, hour, value) {
    void selectTime() async {
      final TimeOfDay? newTime = await showIntervalTimePicker(

        context: context,
        initialTime: hour,

        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.light().copyWith(
                onBackground: Colors.black,
                onPrimary: Colors.white,
                onSecondary: ColorSchemes.primaryColorScheme.secondary,
               inversePrimary: ColorSchemes.primaryColorScheme.secondary,
                background: Colors.white.withAlpha(1),

                

                shadow: Colors.white,


                  primary:  theme.primaryColor, // Change primary color to white
               // Change text color to black
                  surface: Colors.white,

 // Change selected color to white
              ),
            ),
            child: child!,
          );
        },

        interval: homePageController.interval.value,
        visibleStep: homePageController.visibleStep.value,
      );
      if (newTime != null) {
        homePageController.setTime(newTime, value);
      }
    }

    return Container(
      margin: EdgeInsets.only(top: 10, right: 40, left: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              buttontext + ' :',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent),
            onPressed: selectTime,
            child: Container(
                height: 35,
                width: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: ThemeColortDark)),
                child: Center(
                  child: Text(
                    homePageController.formatedDoubleTime.value.padRight(2, ''),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: ThemeColortDark,
                        fontWeight: FontWeight.w500),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
