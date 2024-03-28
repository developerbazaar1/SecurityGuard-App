import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Modals/constants.dart';

import '../../../core/contants/image_constant.dart';
import '../../../core/contants/text_constant.dart';
import '../../Profile/view/profilePage.dart';
import '../../Booking/view/booking.dart';
import '../../Chat/view/chats.dart';
import '../../homePage/view/home-page.dart';
import '../controller/HomeScreenController.dart';

class Homescreen extends GetView<HomeScreenController> {
  Homescreen({super.key});
  @override
  // TODO: implement controller

  static List<Widget> _pages = <Widget>[
    Home(),
    Chat(),
    Booking(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {

    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                selectedIconTheme: IconThemeData(color: ThemeColor),
                selectedLabelStyle: TextStyle(fontSize: 12),
                unselectedLabelStyle: TextStyle(fontSize: 12),
                unselectedItemColor: Colors.grey,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        CI.imgHome,
                        height: 30,
                        width: 30,
                      ),
                      label: (CT.home),
                      activeIcon:
                          Image.asset(CI.imgActiveHome, height: 30, width: 30)),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        CI.imgChats,
                        height: 30,
                        width: 30,
                      ),
                      label: (CT.chats),
                      activeIcon: Image.asset(CI.imgActiveChats,
                          height: 30, width: 30)),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        CI.imgBooking,
                        height: 30,
                        width: 30,
                      ),
                      label: (CT.booking),
                      activeIcon: Image.asset(CI.imgActivePaper,
                          height: 30, width: 30)),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        CI.imgProfile,
                        height: 30,
                        width: 30,
                      ),
                      label: (CT.profile),
                      activeIcon: Image.asset(CI.imgActiveProfile,
                          height: 30, width: 30)),
                ],
                type: BottomNavigationBarType.fixed,
                currentIndex: currentIndex.value,
                selectedItemColor: ThemeColor,
                onTap: (index){
                  controller.onItemTapped(index);
                },
                elevation: 5),
            body: Obx(() => _pages[currentIndex.value])
          );
        });
  }
}
