import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myapp/routes/app_routes.dart';

import '../core/utils/utils.dart';
import '../modules/bookingDetails/view/bookingDetails.dart';

class bookingChatModal extends StatelessWidget {
  const bookingChatModal({
    super.key,
    required this.fem,
    required this.ffem,
    required this.name,
    required this.duration,
    required this.time,
    required this.status,
    required this.statusColor,
    required this.image,
    required this.date,   required this.statusheight, required this.textColor,

  });

  final double fem;
  final double ffem;
  final int statusheight;
  final String name, duration, time, status, image, date;
  final Color statusColor,textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // component11jhT (605:1869)
      onPressed: () {
        Get.toNamed(AppRoutes.bookingDetails,arguments: [name,image]);
       // Get.to(()=>BookingDetails(name: name, image: image));
       // Navigator.push(context, MaterialPageRoute(builder: (context) =>BookingDetails(name: name, image: image,) ,));
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 20 * fem, 9 * fem),
        width: double.infinity,
        height: 87 * fem,
        decoration: BoxDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // frame67ZgV (I605:1869;605:302)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 21 * fem, 0 * fem),
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // ellipse2i3b (I605:1869;605:303)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 15 * fem, 1 * fem),
                    width: 60 * fem,
                    height: 60 * fem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30 * fem),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image),
                      ),
                    ),
                  ),
                  Container(
                    // frame66oKw (I605:1869;605:304)
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // allysonrollinsjUV (I605:1869;605:305)
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
                        Container(
                          // mondayoct242iV (I605:1869;605:306)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 4 * fem),
                          child: Text(
                            duration,
                            style: SafeGoogleFont(
                              'Nunito',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Text(
                          // amYRw (I605:1869;605:307)
                          time,
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
              // frame66HuK (I605:1869;605:308)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
              width: statusheight * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // mminsbeforeSGR (I605:1869;605:309)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 28 * fem),
                    child: Text(
                      date,
                      style: SafeGoogleFont(
                        'Noto Sans',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3625 * ffem / fem,
                        color: Color(0xff898989),
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