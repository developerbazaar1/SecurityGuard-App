import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/page-2/HomeScreen/HomeScreenController.dart';

import 'package:myapp/page-2/Profile/profilePage.dart';
import 'package:myapp/page-2/profile-page.dart';


import '../Booking/booking.dart';
import '../chats.dart';
import '../homePage/home-page.dart';



class Homescreen extends StatefulWidget {
  Homescreen({super.key, required this.selectedIndexValue});
   var selectedIndexValue ;

  @override
  State<Homescreen> createState() => _HomescreenState();
}



class _HomescreenState extends State<Homescreen> {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndexValue = index;
    });
  }


  static  List<Widget> _pages = <Widget>[
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
              selectedIconTheme: IconThemeData(
            color:ThemeColor
          ),

              selectedLabelStyle: TextStyle(fontSize: 12),
              unselectedLabelStyle: TextStyle(fontSize: 12),
              unselectedItemColor: Colors.grey,

              items:  <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Image.asset('assets/page-2/images/home.png',height: 30,width: 30,),
                  label: ('Home'),
                  activeIcon: Image.asset('assets/page-2/images/ActiveHome.png',height: 30,width: 30)

                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/page-2/images/chats.png',height: 30,width: 30,),
                  label: ('Chats'),
                  activeIcon: Image.asset('assets/page-2/images/ActiveChats.png',height: 30,width: 30)
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/page-2/images/booking.png',height: 30,width: 30,),
                  label: ('Booking'),
                  activeIcon: Image.asset('assets/page-2/images/ActivePaper.png',height: 30,width: 30)
                ),

                BottomNavigationBarItem(
                  icon: Image.asset('assets/page-2/images/profile.png',height: 30,width: 30,),
                  label: ('Profile'),
                  activeIcon: Image.asset('assets/page-2/images/ActiveProfile.png',height: 30,width: 30)
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: widget.selectedIndexValue,
              selectedItemColor: ThemeColor,
              onTap: _onItemTapped,
              elevation: 5),
          body: _pages.elementAt(widget.selectedIndexValue),
        );
      }
    );
  }
}
