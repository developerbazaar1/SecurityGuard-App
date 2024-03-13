import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/app/theme/constant/constants.dart';

import 'package:myapp/utils.dart';

import '../../notification-list.dart';
import '../../profileUpdated.dart';
import 'EditProfileController.dart';

class ProfileUpdatePage extends StatelessWidget {
  final ProfileImageController profileImageController =
      Get.put(ProfileImageController());

  var _image;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),
      body: Container(
        // profileupdatepageAjK (303:2128)
        padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // frame63Mcm (303:2129)
                margin:
                    EdgeInsets.fromLTRB(14 * fem, 0 * fem, 14 * fem, 0 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupnnidtch (TskVCdh6sAqEbc1DysNNiD)
                      padding: EdgeInsets.fromLTRB(
                          6 * fem, 0 * fem, 6 * fem, 0 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // frame52CdP (303:2235)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: double.infinity,
                            height: 43 * fem,
                            decoration: BoxDecoration(),
                            child: Center(
                              child: Text(
                                // editprofilewzH (303:2239)
                                'Edit Profile',
                                style: SafeGoogleFont(
                                  'Noto Sans',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
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
                            height: 20,
                          ),
                          Container(
                            // group32DS1 (303:2267)
                            margin: EdgeInsets.fromLTRB(
                                0.5 * fem, 0 * fem, 0.5 * fem, 0 * fem),
                            width: double.infinity,
                            height: 100 * fem,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: 100 * fem,
                                    height: 100 * fem,
                                    child: Obx(() => Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50 * fem),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: profileImageController
                                                        .profileImagePath
                                                        .value
                                                        .isEmpty
                                                    ? AssetImage(
                                                        'assets/page-2/images/finalImage/profileImage.png')
                                                    : FileImage(File(
                                                            profileImageController
                                                                .profileImagePath
                                                                .value))
                                                        as ImageProvider),
                                          ),
                                        )),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 110 * fem),
                                  decoration: BoxDecoration(),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(right: 10, bottom: 5),
                                      // padding: EdgeInsets.only(bottom: 0,left: 0,top: 0,right: 0),
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: kThemeColorDark,
                                          shape: BoxShape.circle),
                                      child: IconButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return SafeArea(
                                                  child: Container(
                                                    child: Wrap(
                                                      children: [
                                                        ListTile(
                                                          leading: Icon(Icons
                                                              .photo_library),
                                                          title:
                                                              Text('Gallery'),
                                                          onTap: () {
                                                            profileImageController
                                                                .pickImage(
                                                                    ImageSource
                                                                        .gallery);
                                                            Get.back();
                                                          },
                                                        ),
                                                        ListTile(
                                                          leading: Icon(
                                                              Icons.camera_alt),
                                                          title: Text('Camera'),
                                                          onTap: () {
                                                            profileImageController
                                                                .pickImage(
                                                                    ImageSource
                                                                        .camera);
                                                            Get.back();
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              });
                                        },
                                        icon: Icon(
                                          Icons.edit_outlined,
                                          color: Colors.white,
                                          size: 18 * fem,
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
                      // frame2900Xr1 (303:2292)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 20 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // component2Sxy (303:2253)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // namenmw (303:2257)
                                  margin: EdgeInsets.fromLTRB(
                                      10 * fem, 0 * fem, 0 * fem, 5 * fem),
                                  child: Text(
                                    'Name:',
                                    style: SafeGoogleFont(
                                      'Noto Sans',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame16tKB (303:2275)
                                  padding: EdgeInsets.fromLTRB(
                                      15 * fem, 10 * fem, 15 * fem, 10 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffdff4ff),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: Text(
                                    'Allyson Rollins',
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10 * fem,
                          ),
                          Container(
                            // component3ybX (303:2277)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      10 * fem, 0 * fem, 0 * fem, 5 * fem),
                                  child: Text(
                                    'Email Address:',
                                    style: SafeGoogleFont(
                                      'Noto Sans',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame16Gad (303:2280)
                                  padding: EdgeInsets.fromLTRB(
                                      15 * fem, 10 * fem, 15 * fem, 10 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffdff4ff),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: Text(
                                    'allyson@gmail.com',
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10 * fem,
                          ),
                          Container(
                            // component4iSd (303:2282)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // phonenoGj3 (303:2284)
                                  margin: EdgeInsets.fromLTRB(
                                      10 * fem, 0 * fem, 0 * fem, 5 * fem),
                                  child: Text(
                                    'Phone No. :',
                                    style: SafeGoogleFont(
                                      'Noto Sans',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame16ajj (303:2285)
                                  padding: EdgeInsets.fromLTRB(
                                      15 * fem, 10 * fem, 15 * fem, 10 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffdff4ff),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: Text(
                                    '90009-90009',
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 0 * fem,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            // component5rSM (303:2287)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          10 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        'Address:',
                                        style: SafeGoogleFont(
                                          'Noto Sans',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text("Enter Address :"),
                                                actions: [
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          bottom: 20),
                                                      padding: EdgeInsets.only(
                                                          bottom: 0, left: 10),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    20 * fem),
                                                        color:
                                                            kBackgroundBottomsheet,
                                                      ),
                                                      child: TextFormField(
                                                        controller:
                                                            profileImageController
                                                                .addressController
                                                                .value,
                                                        maxLines: 3,
                                                        decoration:
                                                            InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                      )),
                                                  Center(
                                                      child: ElevatedButton(
                                                          onPressed: () {
                                                            profileImageController
                                                                .updateAddress(
                                                                    profileImageController
                                                                        .addressController
                                                                        .value);
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child:
                                                              Text('Submit')))
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: Icon(
                                          Icons.edit_outlined,
                                          color: kThemeColorDark,
                                        )),
                                  ],
                                ),
                                Container(
                                  height: 60,
                                  // frame16ajj (303:2285)
                                  padding: EdgeInsets.fromLTRB(
                                      15 * fem, 10 * fem, 15 * fem, 10 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffdff4ff),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: Obx(
                                    () {
                                      return Text(
                                        profileImageController.addressController
                                                        .value ==
                                                    null ||
                                                profileImageController
                                                        .addressController
                                                        .value
                                                        .text ==
                                                    ''
                                            ? 'Market Pl, Romsey SO51 8NB, United Kingdom'
                                            : profileImageController
                                                .addressController.value.text,
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            // component5rSM (303:2287)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          10 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        'Profile Description:',
                                        style: SafeGoogleFont(
                                          'Noto Sans',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title:
                                                    Text("Enter Description :"),
                                                actions: [
                                                  Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      margin: EdgeInsets.only(
                                                          bottom: 20,
                                                          left: 10,
                                                          right: 10),
                                                      padding: EdgeInsets.only(
                                                          bottom: 0, left: 10),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    20 * fem),
                                                        color:
                                                            kBackgroundBottomsheet,
                                                      ),
                                                      child: TextFormField(
                                                        controller:
                                                            profileImageController
                                                                .descriptionController
                                                                .value,
                                                        maxLines: 10,
                                                        decoration:
                                                            InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                      )),
                                                  Center(
                                                      child: ElevatedButton(
                                                          onPressed: () {
                                                            profileImageController
                                                                .descriptionController(
                                                                    profileImageController
                                                                        .descriptionController
                                                                        .value);
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child:
                                                              Text('Submit')))
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: Icon(
                                          Icons.edit_outlined,
                                          color: kThemeColorDark,
                                        )),
                                  ],
                                ),
                                Container(
                                  height: 108,
                                  // frame16ajj (303:2285)
                                  padding: EdgeInsets.fromLTRB(
                                      15 * fem, 10 * fem, 15 * fem, 10 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffdff4ff),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: Obx(
                                    () {
                                      return Text(
                                        profileImageController.addressController
                                                        .value ==
                                                    null ||
                                                profileImageController
                                                        .addressController
                                                        .value
                                                        .text ==
                                                    ''
                                            ? 'Lorem ipsum dolor sit amet consectetur. Ultrices vitae malesuada gravida lectus a et. Cum interdum sit pellentesque in mauris etiam adipiscing.'
                                            : profileImageController
                                                .addressController.value.text,
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height:   200,
                            // component2Sxy (303:2253)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame50Mih (223:555)
                                  margin: EdgeInsets.fromLTRB(
                                      20 * fem, 0 * fem, 20 * fem, 5 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        // namenmw (303:2257)
                                        margin: EdgeInsets.fromLTRB(10 * fem,
                                            0 * fem, 0 * fem, 5 * fem),
                                        child: Text(
                                          'Gallery:',
                                          style: SafeGoogleFont(
                                            'Noto Sans',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3625 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          // viewmorenp1 (223:557)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 0 * fem, 0 * fem),
                                          child: TextButton(
                                            onPressed: () {
                                              profileImageController
                                                  .getImages();
                                            },
                                            child: Text(
                                              'Upload More',
                                              style: SafeGoogleFont(
                                                'Noto Sans',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff005271),
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Obx(() => SizedBox(
                                    child: profileImageController
                                        .selectedImages.value.isEmpty||profileImageController
                                        .selectedImages.value == null
                                        ? Center(
                                        child: Text(
                                            'Please Upload the Images!!'))
                                        : Container(height: 100,width: MediaQuery.of(context).size.width,
                                      child: ListView.builder(
                                        itemCount: profileImageController.selectedImages.value.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Stack(

                                            children: [
                                              Container(
                                                height: 100*fem,
                                                width: 120*fem,
                                                  child: kIsWeb
                                                      ? Image.network(
                                                      profileImageController
                                                          .selectedImages[
                                                      index]
                                                          .path,fit: BoxFit.cover
                                                    ,)
                                                      : Image.file(
                                                      profileImageController
                                                          .selectedImages[
                                                      index],fit: BoxFit.cover)),
                                              Positioned(
                                                top: 0, // Adjust the top position as needed
                                                right: 0, // Adjust the right position as needed
                                                child: IconButton(
                                                  icon: Icon(Icons.delete,size: 25,),
                                                  onPressed: () {
                                                    profileImageController.deleteImage( profileImageController
                                                        .selectedImages[
                                                    index]);


                                                  },
                                                  color: Colors.red,
                                                ),
                                              ),

                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  )),
                                ),


                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10 * fem,
                          ),
                          Container(
                            // component2Sxy (303:2253)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          10 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'Bank Account Number:',
                                        style: SafeGoogleFont(
                                          'Noto Sans',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text(
                                                    "Bank Account Number:"),
                                                actions: [
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          bottom: 20),
                                                      padding: EdgeInsets.only(
                                                          bottom: 0, left: 10),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    20 * fem),
                                                        color:
                                                            kBackgroundBottomsheet,
                                                      ),
                                                      child: TextFormField(
                                                        controller:
                                                            profileImageController
                                                                .accountNumber
                                                                .value,
                                                        maxLines: 1,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        validator: (value) {},
                                                        inputFormatters: [
                                                          LengthLimitingTextInputFormatter(
                                                              12)
                                                        ],
                                                        decoration:
                                                            InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                      )),
                                                  Center(
                                                      child: ElevatedButton(
                                                          onPressed: () {
                                                            profileImageController
                                                                .updateAddress(
                                                                    profileImageController
                                                                        .addressController
                                                                        .value);
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child:
                                                              Text('Submit')))
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: Icon(
                                          Icons.edit_outlined,
                                          color: kThemeColorDark,
                                        )),
                                  ],
                                ),
                                Container(
                                  // frame16tKB (303:2275)
                                  padding: EdgeInsets.fromLTRB(
                                      15 * fem, 10 * fem, 15 * fem, 10 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffdff4ff),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: Text(
                                    profileImageController
                                            .accountNumber.value.text ??
                                        '8596-8596-8596',
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10 * fem,
                          ),
                          Container(
                            // component2Sxy (303:2253)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // namenmw (303:2257)
                                      margin: EdgeInsets.fromLTRB(
                                          10 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'Bank Account Holder Name:',
                                        style: SafeGoogleFont(
                                          'Noto Sans',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text(
                                                    "Bank Account Number Name:"),
                                                actions: [
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          bottom: 20),
                                                      padding: EdgeInsets.only(
                                                          bottom: 0, left: 10),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    20 * fem),
                                                        color:
                                                            kBackgroundBottomsheet,
                                                      ),
                                                      child: TextFormField(
                                                        controller:
                                                            profileImageController
                                                                .accountName
                                                                .value,
                                                        maxLines: 1,
                                                        keyboardType:
                                                            TextInputType.text,
                                                        validator: (value) {},
                                                        decoration:
                                                            InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                      )),
                                                  Center(
                                                      child: ElevatedButton(
                                                          onPressed: () {
                                                            profileImageController
                                                                .updateAddress(
                                                                    profileImageController
                                                                        .addressController
                                                                        .value);
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child:
                                                              Text('Submit')))
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: Icon(
                                          Icons.edit_outlined,
                                          color: kThemeColorDark,
                                        )),
                                  ],
                                ),
                                Container(
                                    // frame16tKB (303:2275)
                                    padding: EdgeInsets.fromLTRB(
                                        15 * fem, 10 * fem, 15 * fem, 10 * fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffdff4ff),
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                    ),
                                    child: Obx(
                                      () => Text(
                                        profileImageController
                                                .accountName.value.text.isEmpty
                                            ? 'Stefan J. Richards'
                                            : profileImageController
                                                .accountName.value.text,
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10 * fem,
                          ),
                          Container(
                            // component2Sxy (303:2253)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // namenmw (303:2257)
                                      margin: EdgeInsets.fromLTRB(
                                          10 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'IFSC Code:',
                                        style: SafeGoogleFont(
                                          'Noto Sans',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text("IFSC Code:"),
                                                actions: [
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          bottom: 20),
                                                      padding: EdgeInsets.only(
                                                          bottom: 0, left: 10),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    20 * fem),
                                                        color:
                                                            kBackgroundBottomsheet,
                                                      ),
                                                      child: TextFormField(
                                                        controller:
                                                            profileImageController
                                                                .accountIFSC
                                                                .value,
                                                        maxLines: 1,
                                                        keyboardType:
                                                            TextInputType.text,
                                                        validator: (value) {},
                                                        inputFormatters: [
                                                          LengthLimitingTextInputFormatter(
                                                              10)
                                                        ],
                                                        decoration:
                                                            InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                      )),
                                                  Center(
                                                      child: ElevatedButton(
                                                          onPressed: () {
                                                            profileImageController
                                                                .updateAddress(
                                                                    profileImageController
                                                                        .addressController
                                                                        .value);
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child:
                                                              Text('Submit')))
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: Icon(
                                          Icons.edit_outlined,
                                          color: kThemeColorDark,
                                        )),
                                  ],
                                ),
                                Container(
                                  // frame16tKB (303:2275)
                                  padding: EdgeInsets.fromLTRB(
                                      15 * fem, 10 * fem, 15 * fem, 10 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffdff4ff),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: Obx(() => Text(
                                        profileImageController
                                                .accountIFSC.value.text ??
                                            'HDFC0000240',
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10 * fem,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame30KUM (303:2296)
                      margin: EdgeInsets.fromLTRB(
                          6 * fem, 0 * fem, 6 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileUpdated(),
                              ));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 48 * fem,
                          child: Container(
                            // frame32RXP (303:2297)
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff005271),
                              borderRadius: BorderRadius.circular(10 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Update',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Nunito',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
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
            color: kAppbarUnderline, // Choose your border color
            width: 1.0, // Choose the border width
          ),
        ))),
      ),
      backgroundColor: Colors.white,
      elevation: 8,
      leadingWidth: 70 * fem,
      title: Container(
        margin: EdgeInsets.only(left: 0, top: 5, bottom: 5),
        child: Image(
          image: AssetImage('assets/page-2/images/finalImage/logo.png'),
          height: 40,
          width: 52.35,
        ),
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
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
}
