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
import 'package:myapp/page-2/dogSecurity.dart';
import 'package:myapp/page-2/homePage/home-page.dart';
import 'package:myapp/page-2/security-guard.dart';
import 'package:myapp/page-2/traffic-marshal.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
          'assets/page-2/images/Dog.png', 'Dog Units -K9', DogSecurityInfo()),
      SecurityIcon('assets/page-2/images/doorSupervisors.png',
          "Door Supervisors", SuprevisorInfo()),
      SecurityIcon('assets/page-2/images/SecuritGuards.png', "Security Guards",
          SecurityGardInfo()),
    ];

    final DateController dateController = Get.put(DateController());

    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),
      body: homePageController.ServicesData.value==null?Center(child: CircularProgressIndicator(),):Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
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
                Form(
                  key: _formKey,
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
                            print("objectj");
                          },
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              homePageController.isLocationEmpty.value = true;
                            } else {
                              homePageController.isLocationEmpty.value = false;
                            }
                          },

                          onFieldSubmitted: (value) {

                            if (homePageController
                                    .searchController.value.text.isEmpty ||
                                homePageController
                                        .searchController.value.text == null) {
                              if (_formKey.currentState!.validate()) {
                                homePageController.textSubmitted.value = false;
                                homePageController.isLocationEmpty.value = true;

                              }
                            } else {
                              homePageController.textSubmitted.value = true;
                              homePageController.isLocationEmpty.value = false;
                              homePageController.ServicesAPI();

                            }
                          },
                          controller: homePageController.searchController.value,
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
                            hintText: 'Where do you need security? ',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                textBaseline: TextBaseline.alphabetic),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Obx(
                        () {
                          return homePageController.isLocationEmpty.value ==
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
                      if (homePageController.textSubmitted.value == true)
                        Container(
                          margin: EdgeInsets.only(
                              top: 0, left: 12, right: 12, bottom: 10),
                          padding: EdgeInsets.only(left: 25, right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
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
                                width: MediaQuery.of(context).size.width * 0.65*fem,
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  icon: const Icon(
                                      Icons.arrow_drop_down_outlined),
                                  hint: Text("Choose Service"),
                                  elevation: 16,
                                  isExpanded: true,

                                  style: const TextStyle(color: Colors.black),
                                  onChanged: (String? value) {
                                    // homePageController.selectedValue = value!;
                                    // print(homePageController.selectedValue);
                                    // homePageController.isSecurityChoosed.value =
                                    //     true;
                                  },
                                  value: homePageController.selectedValue,
                                  items: homePageController.Items.value.map<DropdownMenuItem<String>>(( value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),


                                ),
                              ),
                            ],
                          ),
                        ),
                      if (homePageController.isSecurityChoosed.value == true)
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Center(
                                  child: Container(
                                    margin: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    height: 355*fem,
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Obx(
                                                  () {
                                                return homePageController.isDateEmpty.value ==
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
                                            Container(
                                                margin:
                                                    EdgeInsets.only(right: 15),
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      'Close',
                                                      style: searchTextStyle,
                                                    ))),
                                          ],
                                        ),
                                        Container(
                                          color: Colors.white,
                                          height: 240*fem,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          child: SfDateRangePicker(
                                            minDate: DateTime.now(),
                                            controller: homePageController
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
                                                    DateTime.now()
                                                        .add(const Duration(
                                                            days: 3))),
                                          ),
                                        ),
                                        ElevatedButton(
                                            onPressed: () {

                                              homePageController.updateDate();
                                              if(homePageController.range.value.isNotEmpty){

                                                homePageController.isDateEmpty.value=false;

                                                homePageController
                                                    .isDateSelected.value = true;
                                                Navigator.pop(context);

                                              }else{
                                                homePageController.isDateEmpty.value=true;
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
                            padding:
                                EdgeInsets.only(left: 15, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
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
                                      homePageController.formattedDate.value
                                          .toString(),
                                      style: searchTextStyle,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      if (homePageController.isDateSelected.value == true)
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
                            margin: EdgeInsets.only(left: 12, right: 12),
                            padding:
                                EdgeInsets.only(left: 15, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
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
                    ],
                  ),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.140*fem,
                        decoration: BoxDecoration(),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:homePageController.ServiceLength.value,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              padding: EdgeInsets.only(left: 10, right: 10),

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
                                          margin: EdgeInsets.only(top: 10),
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
                                            padding: EdgeInsets.all(0.0),
                                            child: InkWell(
                                              onTap: () {
                                                homePageController
                                                    .isButtonTaped.value = true;
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          SecurityList[index]
                                                              .function,
                                                    ));
                                              },
                                              child: Container(
                                                height: 50,
                                                width: 50,
                                                margin: EdgeInsets.all(0),
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
                                    homePageController.ServicesData['services'][index]['service_title'],
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
        margin: EdgeInsets.only(top: 100*fem, bottom: MediaQuery.of(context).size.height*0.55, left: 30*fem, right: 30*fem),
        padding: EdgeInsets.only(top: 20*fem, bottom: 15*fem),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [

              Obx(
                () {


                  return homePageController.isTimeNull.value==true?

                    Text(
                    "* Please choose service",
                    style: TextStyle(
                      color: ThemeColorError,
                      fontFamily: 'Nunito',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ):SizedBox();
                },
              ),
            Obx(() => buildContainer(context, 'Start Time',
                homePageController.startselectedTime.value, true)),

            Obx(() => buildContainer(context, 'End Time',
                homePageController.endselectedTime.value,false)),
            Container(
              height: 34,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    homePageController.updateCountTime();
                    print('${homePageController.isFirstTimeSelected.value} value ${homePageController.isSecondTimeSelected.value}');



                    if (
                        homePageController.isFirstTimeSelected.value == false || homePageController.isSecondTimeSelected.value == false ){

                      homePageController.updateNullTime();
                    }else {


                      homePageController.updateFormatedTime();
                      // if (homePageController.isTimeNull.value == false) {
                      Navigator.pop(context);

                      showModalBottomSheet<void>(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          homePageController.updateCountTime;
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
                                Image(image: AssetImage('assets/page-2/images/logo.png',),height: 100,width: 100,),
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
                                    homePageController.isTimeNull.value= false;
                                    homePageController.searchController.value.clear();
                                    homePageController.isSecurityChoosed.value= false;
                                    homePageController.textSubmitted.value = false;
                                    homePageController.isDateSelected.value = false;
                                    homePageController.formatedTime.value = 'Choose';
                                    homePageController.selectedValue=null;
                                    homePageController.formattedDate.value = 'Choose Date';
                                    homePageController.isFirstTimeSelected.value = false ; homePageController.isSecondTimeSelected.value = false;
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

                    }





                  },
                  //   },
                  child: Text(
                    'Submit',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Container buildContainer(

      BuildContext context, buttontext, hour, value) {
    void selectTime() async {
      final TimeOfDay? newTime = await showIntervalTimePicker(
        context: context,
        initialTime: hour,
        interval: homePageController.interval.value,
        visibleStep: homePageController.visibleStep.value,
      );
      if (newTime != null) {
        homePageController.setTime(newTime,value);


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
                  child:  Text(
                    homePageController.formatedDoubleTime.value.padRight(2,''),
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
