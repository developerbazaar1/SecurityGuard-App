import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/page-2/notification-list.dart';
import 'package:myapp/page-2/profileUpdated.dart';
import 'package:myapp/utils.dart';

import 'EditProfileController.dart';

class ProfileUpdatePage extends StatelessWidget {
  final String name, email, phone, address;
  var image;

  ProfileUpdatePage(
      {super.key,
      required this.name,
      required this.email,
      required this.phone,
      required this.address,
      this.image});

  Widget build(BuildContext context) {
    final ProfileImageController profileImageController =
        Get.put(ProfileImageController(name: name, address: address, phone:phone ));

    final picker = ImagePicker();
    @override
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    print('this is $image');
    return Scaffold(


      appBar: Appbar(context, fem),
      body: Container(

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
                          6 * fem, 0 * fem, 6 * fem, 25 * fem),
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
                                  child: Obx(
                                        () {
                                      final selectedImage = profileImageController.profileImagePath.value;
                                      return selectedImage != null
                                          ?  Container(
                                        // ellipse3AK3 (303:2127)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 25 * fem, 0 * fem),
                                        width: 100 * fem,
                                        height: 100 * fem,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50 * fem),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image:

                                              FileImage(selectedImage)

                                          ),
                                        ),
                                      )


                                      // Container(
                                      //
                                      //   decoration: BoxDecoration(
                                      //     color: Colors.red,
                                      //     shape: BoxShape.circle,
                                      //     image: DecorationImage(
                                      //       fit: BoxFit.cover,
                                      //       image: FileImage(selectedImage),
                                      //
                                      //     )
                                      //   ),)



                                          : image==''?Image.asset(defaultImageUrl,height: 100,width: 100,):Image.network(image);
                                        },





                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 110 * fem),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
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
                                                        title: Text('Gallery'),
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
                                      icon: SizedBox(
                                        width: 50 * fem,
                                        height: 30 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-31.png',
                                          width: 40 * fem,
                                          height: 30 * fem,
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
                                  height: 42*fem,
                                  padding: EdgeInsets.fromLTRB(
                                      15 * fem, 0 * fem, 15 * fem, 0 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffdff4ff),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(bottom: 5),


                                    ),

                                  controller: profileImageController.nameController.value,
                                    style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),

                                  //   name==null||name==''?'':name,
                                  //   style: SafeGoogleFont(
                                  //     'Nunito',
                                  //     fontSize: 16 * ffem,
                                  //     fontWeight: FontWeight.w400,
                                  //     height: 1.3625 * ffem / fem,
                                  //     color: Color(0xff000000),
                                  //   ),
                                  // )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15 * fem,
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
                                    email==null||email==''?'':email
                                    ,
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
                            height: 15 * fem,
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
                                      15 * fem, 0 * fem, 15 * fem, 0 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffdff4ff),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(bottom: 5),


                                    ),

                                    controller: profileImageController.phoneController.value,
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),

                                    //   name==null||name==''?'':name,
                                    //   style: SafeGoogleFont(
                                    //     'Nunito',
                                    //     fontSize: 16 * ffem,
                                    //     fontWeight: FontWeight.w400,
                                    //     height: 1.3625 * ffem / fem,
                                    //     color: Color(0xff000000),
                                    //   ),
                                    // )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15 * fem,
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
                                          10 * fem, 0 * fem, 0 * fem, 5 * fem),
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
                                                            ThemeColorBackgroundBottomsheet,
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
                                          color: ThemeColortDark,
                                        )),
                                  ],
                                ),
                                Container(
                                  height: 60,

                                  padding: EdgeInsets.fromLTRB(
                                      15 * fem, 10 * fem, 15 * fem, 10 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffdff4ff),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: TextFormField(
                                    readOnly: true,
                                    decoration: InputDecoration(

                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(bottom: 5),


                                    ),

                                    controller: profileImageController.addressController.value,
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3625 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),

                                    //   name==null||name==''?'':name,
                                    //   style: SafeGoogleFont(
                                    //     'Nunito',
                                    //     fontSize: 16 * ffem,
                                    //     fontWeight: FontWeight.w400,
                                    //     height: 1.3625 * ffem / fem,
                                    //     color: Color(0xff000000),
                                    //   ),
                                    // )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame30KUM (303:2296)
                      margin: EdgeInsets.fromLTRB(
                          6 * fem, 0 * fem, 6 * fem, 0 * fem),
                      child:profileImageController.isLoading.value==true?Center(child: CircularProgressIndicator(),): TextButton(
                        onPressed: () {
                          var path = profileImageController.profileImagePath.value;
                          var _image;

                          profileImageController.profileImagePath.value!=null?
                          _image= profileImageController.profileImagePath.value!.path:
                          _image = image;




                          profileImageController.UpdateProfileAPI(_image);
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 53 * fem,
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
            color: ThemeColorAppbarUnderline, // Choose your border color
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
          image: AssetImage('assets/page-2/images/logo.png'),
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
