import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/theme/constant/constants.dart';
import 'package:myapp/routes/app_routes.dart';

import 'package:myapp/utils.dart';

import '../Moduls/ChatScreen/view/userChats.dart';
class ChatTap extends StatelessWidget {
  const ChatTap({
    super.key,
    required this.fem,
    required this.ffem,
    required this.image,
    required this.name,
    required this.duration, required this.chatColor,
  });

  final double fem;
  final double ffem;
  final String image, name, duration;
  final Color chatColor;

  @override
  Widget build(
      BuildContext context,
      ) {
    return TextButton(
      // frame61xtR (605:1135)
      onPressed: () {
       Get.toNamed(AppRoutes.chat,arguments: [image, name]);
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child:Container(
        padding:
        EdgeInsets.fromLTRB(20 * fem, 10 * fem, 20 * fem, 10 * fem),
        width: double.infinity,
        height: 70 * fem,
        decoration: BoxDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame67gZX (605:1136)
              margin:
              EdgeInsets.fromLTRB(0 * fem, 0 * fem, 20 * fem, 0 * fem),
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // ellipse1dUm (605:1137)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 15 * fem, 0 * fem),
                    width: 50 * fem,
                    height: 50 * fem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25 * fem),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          image,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // frame65vyf (605:1138)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 2 * fem, 0 * fem, 1 * fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // allysonrollinsgC9 (605:1139)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 5 * fem),
                          child: Text(
                            name,
                            style: SafeGoogleFont(
                              'Nunito',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3625 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Text(
                          // loremipsumdolorsitametconsecte (605:1140)
                          'Lorem ipsum dolor sit amet consectetur.',
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3625 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame66uKo (605:1141)
              width: 50 * fem,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:EdgeInsets.only(top: 5),
                    // amrkq (605:1142)

                    child: Text(
                      duration,
                      style: SafeGoogleFont(
                        'Noto Sans',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3625 * ffem / fem,
                        color: Color(0xff898989),
                      ),
                    ),
                  ),
                  Container(
                    // frame66ZfF (605:1143)
                    margin: EdgeInsets.fromLTRB(
                        8.5 * fem, 0 * fem, 8.5 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        10 * fem, 5 * fem, 9 * fem, 4 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: chatColor,
                      borderRadius: BorderRadius.circular(30 * fem),
                    ),
                    child: Text(
                      '3',
                      style: SafeGoogleFont(
                        'Noto Sans',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.3625 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
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
}