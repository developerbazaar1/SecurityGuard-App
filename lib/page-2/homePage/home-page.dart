import 'dart:ui';
import 'package:customizable_datetime_picker/sources/i18n/date_picker_i18n.dart';
import 'package:customizable_datetime_picker/sources/model/date_picker_divider_theme.dart';
import 'package:customizable_datetime_picker/sources/model/date_picker_theme.dart';
import 'package:customizable_datetime_picker/sources/widget/customizable_time_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:interval_time_picker/interval_time_picker.dart';

import 'package:intl/intl.dart';
import 'package:myapp/Modals/BottomsheetSecurity.dart';
import 'package:myapp/page-2/Loading/searching.dart';
import 'package:myapp/page-2/GetService/dogSecurity.dart';
import 'package:myapp/page-2/homePage/home-page.dart';
import 'package:myapp/page-2/security-guard.dart';
import 'package:myapp/page-2/traffic-marshal.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../Modals/DropdownItemList.dart';
import '../notification-list.dart';
import 'controller.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/SecurityList.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/select-guard.dart';

const TextStyle pickerTextStyle = TextStyle(
    color: Color(0xFF101010), fontSize: 20, fontWeight: FontWeight.w600);

class Home extends StatelessWidget {
  bool? textSubmitted;
  HomePageController homePageController = Get.put(HomePageController());

  bool? isButtonTaped;

  @override
  Widget build(BuildContext context) {
    TextEditingController _dateController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    List SecurityList = [
      SecurityIcon(
        'assets/page-2/images/Dog.png',
        'Dog Units -K9',
      ),
      SecurityIcon(
          'assets/page-2/images/doorSupervisors.png', "Door Supervisors"),
      SecurityIcon(
        'assets/page-2/images/SecuritGuards.png',
        "Security Guards",
      ),
    ];

    final DateController dateController = Get.put(DateController());

    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        appBar: Appbar(context, fem),
        body: homePageController.ServicesData.value == null
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
                      'assets/page-2/images/background.gif',
                    ),
                  ),
                ),
                child: Container(child: Obx(
                  () {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.33,
                          child: SingleChildScrollView(
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 25,
                                        left: 12,
                                        right: 12,
                                        bottom: 10),
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
                                      },

                                      onFieldSubmitted: (value) {
                                        homePageController.searchController
                                            .value.text = value;
                                        print(homePageController
                                            .searchController.value.text);
                                        if (homePageController.searchController
                                                .value.text.isEmpty ||
                                            homePageController.searchController
                                                    .value.text ==
                                                null) {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            homePageController
                                                .textSubmitted.value = false;
                                            homePageController
                                                .isLocationEmpty.value = true;
                                          }
                                        } else {
                                          homePageController
                                              .textSubmitted.value = true;
                                          homePageController
                                              .isLocationEmpty.value = false;
                                        }
                                      },
                                      controller: homePageController
                                          .searchController.value,
                                      textAlign: TextAlign.start,

                                      // controller: _searchController,
                                      // onChanged: _handleSearch,
                                      decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(top: 13),
                                        prefixIcon: Icon(
                                          Icons.location_on_outlined,
                                          color: ThemeColor,
                                          weight: baseWidth,
                                        ),
                                        hintText:
                                            'Where do you need security? ',
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
                                                "* Please choose service",
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
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                'assets/page-2/images/symbols-security.png'),
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
                                            child: DropdownButtonFormField<
                                                DropdownItem>(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                              icon: const Icon(Icons
                                                  .arrow_drop_down_outlined),
                                              hint: Text("Choose Service"),
                                              elevation: 16,
                                              isExpanded: true,
                                              style: const TextStyle(
                                                  color: Colors.black),
                                              onChanged: (DropdownItem? value) {
                                                print(value!.id);

                                                homePageController.SetValue(
                                                    value);
                                                //homePageController.isSecurityChoosed.value = true;
                                              },
                                              value: homePageController
                                                  .selectedValue,
                                              items: homePageController
                                                  .Items.value
                                                  .map<
                                                          DropdownMenuItem<
                                                              DropdownItem>>(
                                                      (value) {
                                                return DropdownMenuItem<
                                                    DropdownItem>(
                                                  value: value,
                                                  child: Text(
                                                      value.title.toString()),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (homePageController.validator.value ==
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
                                                                      "* Please choose service",
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
                                                                            FontWeight.w600,
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
                                                                  'Close',
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
                                                        minDate: DateTime.now(),
                                                        controller:
                                                            homePageController
                                                                .dateController
                                                                .value,
                                                        onSelectionChanged:
                                                            homePageController
                                                                .onSelectionChanged,
                                                        selectionMode:
                                                            DateRangePickerSelectionMode
                                                                .range,
                                                        initialSelectedRange: PickerDateRange(
                                                            DateTime.now()
                                                                .subtract(
                                                                    const Duration(
                                                                        days:
                                                                            4)),
                                                            DateTime.now().add(
                                                                const Duration(
                                                                    days: 3))),
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
                                                        child: Text('OK'))
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
                                              image: AssetImage(
                                                  'assets/page-2/images/calenderIcon.png'),
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
                                        margin: EdgeInsets.only(
                                            left: 12, right: 12),
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
                                              image: AssetImage(
                                                  'assets/page-1/images/frame-24-9TF.png'),
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
                                                "${homePageController.formatedTime.value} Hours",
                                                style: searchTextStyle,
                                              );
                                            })
                                          ],
                                        ),
                                      ),
                                    ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Obx(() {
                                    return homePageController
                                                .firstFloatingButton.value ==
                                            true
                                        ? GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Center(
                                                    child: Container(
                                                      margin:
                                                          EdgeInsets.all(20),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
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
                                                                              .isDateEmpty1
                                                                              .value ==
                                                                          true
                                                                      ? Container(
                                                                          margin:
                                                                              EdgeInsets.only(left: 30),
                                                                          child:
                                                                              Text(
                                                                            "* Please choose service",
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style:
                                                                                TextStyle(
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
                                                              Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              15),
                                                                  child:
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            'Close',
                                                                            style:
                                                                                searchTextStyle,
                                                                          ))),
                                                            ],
                                                          ),
                                                          Container(
                                                            color: Colors.white,
                                                            height: 240 * fem,
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.8,
                                                            child:
                                                                SfDateRangePicker(
                                                              minDate: DateTime
                                                                  .now(),
                                                              controller:
                                                                  homePageController
                                                                      .dateController1
                                                                      .value,
                                                              onSelectionChanged:
                                                                  homePageController
                                                                      .onSelectionChangedFirst,
                                                              selectionMode:
                                                                  DateRangePickerSelectionMode
                                                                      .range,
                                                              initialSelectedRange: PickerDateRange(
                                                                  DateTime.now().subtract(
                                                                      const Duration(
                                                                          days:
                                                                              4)),
                                                                  DateTime.now().add(
                                                                      const Duration(
                                                                          days:
                                                                              3))),
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                homePageController
                                                                    .updateDateFirst();
                                                                if (homePageController
                                                                    .range1
                                                                    .value
                                                                    .isNotEmpty) {
                                                                  homePageController
                                                                      .isDateEmpty1
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
                                                              child: Text('OK'))
                                                        ],
                                                      ),
                                                    ),
                                                  ); // Call the function to build the dialog
                                                },
                                              );
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 12,
                                                  right: 12,
                                                  bottom: 10),
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  top: 10,
                                                  bottom: 10),
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
                                                    image: AssetImage(
                                                        'assets/page-2/images/calenderIcon.png'),
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
                                                            .formattedDate1
                                                            .value
                                                            .toString(),
                                                        style: searchTextStyle,
                                                      )),
                                                ],
                                              ),
                                            ),
                                          )
                                        : SizedBox();
                                  }),
                                  Obx(() {
                                    return homePageController
                                                .firstFloatingButton.value ==
                                            true
                                        ? GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return buildCustomizableTimePickerWidgetFirst(
                                                      context); // Call the function to build the dialog
                                                },
                                              );
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 12, right: 12),
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  top: 10,
                                                  bottom: 10),
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
                                                    image: AssetImage(
                                                        'assets/page-1/images/frame-24-9TF.png'),
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
                                                      "${homePageController.formatedTime1.value} Hours",
                                                      style: searchTextStyle,
                                                    );
                                                  })
                                                ],
                                              ),
                                            ),
                                          )
                                        : SizedBox();
                                  }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Obx(() {
                                    return homePageController
                                                .secondFloatingButton.value ==
                                            true
                                        ? GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Center(
                                                    child: Container(
                                                      margin:
                                                          EdgeInsets.all(20),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
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
                                                                              .isDateEmpty2
                                                                              .value ==
                                                                          true
                                                                      ? Container(
                                                                          margin:
                                                                              EdgeInsets.only(left: 30),
                                                                          child:
                                                                              Text(
                                                                            "* Please choose service",
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style:
                                                                                TextStyle(
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
                                                              Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              15),
                                                                  child:
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            'Close',
                                                                            style:
                                                                                searchTextStyle,
                                                                          ))),
                                                            ],
                                                          ),
                                                          Container(
                                                            color: Colors.white,
                                                            height: 240 * fem,
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.8,
                                                            child:
                                                                SfDateRangePicker(
                                                              minDate: DateTime
                                                                  .now(),
                                                              controller:
                                                                  homePageController
                                                                      .dateController2
                                                                      .value,
                                                              onSelectionChanged:
                                                                  homePageController
                                                                      .onSelectionChangedSecond,
                                                              selectionMode:
                                                                  DateRangePickerSelectionMode
                                                                      .range,
                                                              initialSelectedRange: PickerDateRange(
                                                                  DateTime.now().subtract(
                                                                      const Duration(
                                                                          days:
                                                                              4)),
                                                                  DateTime.now().add(
                                                                      const Duration(
                                                                          days:
                                                                              3))),
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                homePageController
                                                                    .updateDateSecond();
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
                                                              child: Text('OK'))
                                                        ],
                                                      ),
                                                    ),
                                                  ); // Call the function to build the dialog
                                                },
                                              );
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 12,
                                                  right: 12,
                                                  bottom: 10),
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  top: 10,
                                                  bottom: 10),
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
                                                    image: AssetImage(
                                                        'assets/page-2/images/calenderIcon.png'),
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
                                                            .formattedDate2
                                                            .value
                                                            .toString(),
                                                        style: searchTextStyle,
                                                      )),
                                                ],
                                              ),
                                            ),
                                          )
                                        : SizedBox();
                                  }),
                                  Obx(() {
                                    return homePageController
                                                .secondFloatingButton.value ==
                                            true
                                        ? GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return buildCustomizableTimePickerWidgetSecond(
                                                      context); // Call the function to build the dialog
                                                },
                                              );
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 12, right: 12),
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  top: 10,
                                                  bottom: 10),
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
                                                    image: AssetImage(
                                                        'assets/page-1/images/frame-24-9TF.png'),
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
                                                      "${homePageController.formatedTime2.value} Hours",
                                                      style: searchTextStyle,
                                                    );
                                                  })
                                                ],
                                              ),
                                            ),
                                          )
                                        : SizedBox();
                                  }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: MediaQuery.of(context).size.height *
                                    0.140 *
                                    fem,
                                decoration: BoxDecoration(),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      homePageController.ServiceLength.value,
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 10, right: 10),
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Center(
                                                child: Container(
                                                  margin:
                                                      EdgeInsets.only(top: 10),
                                                  child: Center(
                                                      child: Image(
                                                    image: AssetImage(
                                                        'assets/page-2/images/Dog.png'),
                                                    width: 40,
                                                    height: 40,
                                                  )),
                                                ),
                                              ),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(0.0),
                                                    child: InkWell(
                                                      onTap: () {
                                                        homePageController
                                                            .isButtonTaped
                                                            .value = true;
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        DogSecurityInfo(
                                                                          id: homePageController.ServicesData['services'][index]
                                                                              [
                                                                              'id'],
                                                                        )));
                                                      },
                                                      child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        margin:
                                                            EdgeInsets.all(0),
                                                        child: Center(
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/page-2/images/info.png'),
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
                                          Text(
                                            homePageController
                                                    .ServicesData['services']
                                                [index]['service_title'],
                                            style: TextStyle(
                                              color: ThemeColortDark,
                                              fontFamily: 'Nunito',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
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
              ),
        floatingActionButton: Obx(() {
          return homePageController.floatingButton.value == true
              ? Container(
                  margin: EdgeInsets.only(bottom: 320),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        backgroundColor: ThemeColortDark,
                        onPressed: () {
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage(
                                        'assets/page-2/images/logo.png',
                                      ),
                                      height: 100,
                                      width: 100,
                                    ),
                                    Text(
                                      'Our Mission Is To Protect',
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
                                        homePageController.setFloatingValue();


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
                                              'Done',
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
                        },
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10 * fem),
                      FloatingActionButton(
                        heroTag: null,
                        backgroundColor: Colors.white,
                        onPressed: () {
                          print(homePageController.floatingButtonValue);
                          if (homePageController.floatingButtonValue == 0) {
                            homePageController.firstFloatingButton.value = true;
                            homePageController.floatingButtonValue++;
                          } else if (homePageController.floatingButtonValue ==
                              1) {
                            homePageController.secondFloatingButton.value =
                                true;
                            homePageController.floatingButtonValue++;
                          } else if (homePageController
                                  .floatingButtonValue.value ==
                              2)
                            // ignore: curly_braces_in_flow_control_structures
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Center(child: Text('Alert!')),
                                  content: Container(
                                    height: 100 * fem,
                                    child: Column(
                                      children: [
                                        const Text(
                                          'For large booking please call\n Raynet on ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text('02086371406'))
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    Center(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: ThemeColortDark),
                                        child: const Text(
                                          'OK',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pop(); // Close the dialog
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );

                          print(homePageController.floatingButtonValue.value);
                        },
                        child: Icon(
                          Icons.add,
                          color: ThemeColortDark,
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox();
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
            top: 100 * fem,
            bottom: MediaQuery.of(context).size.height * 0.55,
            left: 30 * fem,
            right: 30 * fem),
        padding: EdgeInsets.only(top: 20 * fem, bottom: 15 * fem),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Obx(
              () {
                return homePageController.isTimeNull.value == true
                    ? Text(
                        "* Please choose service",
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
            Obx(() => buildContainer(context, 'Start Time',
                homePageController.startselectedTime.value, true, 0)),
            Obx(() => buildContainer(context, 'End Time',
                homePageController.endselectedTime.value, false, 0)),
            Container(
              height: 34,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ThemeColortDark),
                  onPressed: () {
                    if (homePageController.isFirstTimeSelected.value == false ||
                        homePageController.isSecondTimeSelected.value ==
                            false) {
                      homePageController.updateNullTime();
                    } else {
                      homePageController.updateFormatedTime();
                      homePageController.setFloatingValue();
                      homePageController.isTimeNull.value = false;
                      if (homePageController.isTimeNull.value == false)
                        Navigator.pop(context);
                    }
                  },
                  //   },
                  child: Text(
                    'Submit',
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

  Widget buildCustomizableTimePickerWidgetFirst(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox.expand(
      child: Container(
        margin: EdgeInsets.only(
            top: 100 * fem,
            bottom: MediaQuery.of(context).size.height * 0.55,
            left: 30 * fem,
            right: 30 * fem),
        padding: EdgeInsets.only(top: 20 * fem, bottom: 15 * fem),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Obx(
              () {
                return homePageController.isTimeNull1.value == true
                    ? Text(
                        "* Please choose service",
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
            Obx(() => buildContainer(context, 'Start Time',
                homePageController.startselectedTime1.value, true, 1)),
            Obx(() => buildContainer(context, 'End Time',
                homePageController.endselectedTime1.value, false, 1)),
            Container(
              height: 34,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ThemeColortDark),
                  onPressed: () {
                    print(
                        '${homePageController.isFirstTimeSelected.value} value ${homePageController.isSecondTimeSelected.value}');

                    if (homePageController.isFirstTimeSelected.value == false ||
                        homePageController.isSecondTimeSelected.value ==
                            false) {
                      homePageController.updateNullTime();
                    } else {
                      homePageController.updateFormatedTime();
                      // if (homePageController.isTimeNull.value == false) {
                      Navigator.pop(context);
                    }
                  },
                  //   },
                  child: Text(
                    'Submit',
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

  Widget buildCustomizableTimePickerWidgetSecond(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox.expand(
      child: Container(
        margin: EdgeInsets.only(
            top: 100 * fem,
            bottom: MediaQuery.of(context).size.height * 0.55,
            left: 30 * fem,
            right: 30 * fem),
        padding: EdgeInsets.only(top: 20 * fem, bottom: 15 * fem),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Obx(
              () {
                return homePageController.isTimeNull.value == true
                    ? Text(
                        "* Please choose service",
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
            Obx(() => buildContainer(context, 'Start Time',
                homePageController.startselectedTime2.value, true, 2)),
            Obx(() => buildContainer(context, 'End Time',
                homePageController.endselectedTime2.value, false, 2)),
            Container(
              height: 34,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ThemeColortDark),
                  onPressed: () {
                    print(
                        '${homePageController.isFirstTimeSelected2.value} value ${homePageController.isSecondTimeSelected2.value}');

                    if (homePageController.isFirstTimeSelected2.value ==
                            false ||
                        homePageController.isSecondTimeSelected2.value ==
                            false) {
                      homePageController.updateNullTimeSecond();
                    } else {
                      homePageController.updateFormatedTimeSecond();
                      // if (homePageController.isTimeNull.value == false) {
                      Navigator.pop(context);
                    }
                  },
                  //   },
                  child: Text(
                    'Submit',
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

  Container buildContainer(
      BuildContext context, buttontext, hour, value, time) {
    print(value);

    void selectTime() async {
      final TimeOfDay? newTime = await showIntervalTimePicker(
        context: context,
        initialTime: hour,
        interval: homePageController.interval.value,
        visibleStep: homePageController.visibleStep.value,
      );
      if (newTime != null) {
        if (time == 0) {
          homePageController.setTime(newTime, value);

          hour =
              homePageController.formatedDoubleTime.value.padRight(2, '').obs;
          print('hour value $hour');
        } else if (time == 1) {
          homePageController.setTimeFirst(newTime, value);
          homePageController.text.value =
              homePageController.formatedDoubleTime1.value.padRight(2, '').obs;
          print(homePageController.text.value);
        } else if (time == 2) {
          homePageController.setTimeSecond(newTime, value);
          homePageController.text.value =
              homePageController.formatedDoubleTime2.value.padRight(2, '').obs;
          print(homePageController.text.value);
        }
      }
    }

    return Container(
      margin: EdgeInsets.only(top: 10, right: 40, left: 40),
      color: Colors.white,
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
                    border: Border.all(color: ThemeColortDark),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    hour.hour.toString() + ':' + hour.minute.toString(),
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
