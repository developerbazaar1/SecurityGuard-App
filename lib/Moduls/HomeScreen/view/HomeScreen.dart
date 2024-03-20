import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/theme/constant/constants.dart';
import 'package:myapp/Moduls/Homepage/view/Home.dart';




import '../../Booking/view/booking.dart';
import '../../Profile/view/profilePage.dart';
import '../../chats.dart';
import '../controller/HomeScreenController.dart';




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
    HomePage(),
    Chat(),
    Booking(),

    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(
        color:kThemeColor
      ),

          selectedLabelStyle: TextStyle(fontSize: 12),
          unselectedLabelStyle: TextStyle(fontSize: 12),
          unselectedItemColor: Colors.grey,

          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/page-2/images/finalImage/home.png',height: 30,width: 30,),
              label: ('Home'),
              activeIcon: Image.asset('assets/page-2/images/finalImage/ActiveHome.png',height: 30,width: 30)

            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/page-2/images/finalImage/chats.png',height: 30,width: 30,),
              label: ('Chats'),
              activeIcon: Image.asset('assets/page-2/images/finalImage/ActiveChats.png',height: 30,width: 30)
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/page-2/images/finalImage/booking.png',height: 30,width: 30,),
              label: ('Booking'),
              activeIcon: Image.asset('assets/page-2/images/finalImage/ActivePaper.png',height: 30,width: 30)
            ),

            BottomNavigationBarItem(
              icon: Image.asset('assets/page-2/images/finalImage/profile.png',height: 30,width: 30,),
              label: ('Profile'),
              activeIcon: Image.asset('assets/page-2/images/finalImage/ActiveProfile.png',height: 30,width: 30)
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.selectedIndexValue,
          selectedItemColor: kThemeColor,
          onTap: _onItemTapped,
          elevation: 5),
      body: _pages.elementAt(widget.selectedIndexValue),
    );
  }
}
