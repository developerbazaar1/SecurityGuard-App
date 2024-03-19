import 'package:flutter/material.dart';
import 'package:myapp/Modals/constants.dart';
class AppBarModal extends StatelessWidget {
  const AppBarModal({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Image(
          image: AssetImage('assets/modules/images/logo.png'),
          height: 40,
          width: 52.35,
        ),
        actions: [
          Image(
            image: AssetImage('assets/modules/images/notification.png'),
            height: 30,
            width: 30,
          ),
          SizedBox(
            width: 30 * fem,
          ),
        ],
      ),
    );
  }
}
