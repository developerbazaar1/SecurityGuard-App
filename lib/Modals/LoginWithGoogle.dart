import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
class LoginwithGoogle extends StatelessWidget {
  const LoginwithGoogle({
    super.key,
    required this.fem,
    required this.ffem,
    required this.text

  });

  final double fem;
  final double ffem;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // frame16A2u (223:532)
          margin: EdgeInsets.fromLTRB(
              0 * fem, 0 * fem, 18 * fem, 2 * fem),
          padding: EdgeInsets.fromLTRB(
              68 * fem, 7* fem, 0.5 * fem, 7 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff3a3a3a)),
            borderRadius: BorderRadius.circular(15 * fem),
          ),
          child:GestureDetector(
            onTap:
                (){},
            child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // flatcoloriconsgoogleg1F (223:539)
                  margin: EdgeInsets.fromLTRB(0 * fem,
                      0 * fem, 12.5 * fem, 1 * fem),
                  width: 20 * fem,
                  height: 20 * fem,
                  child: Image.asset(
                    'assets/page-1/images/flat-color-icons-google-6KK.png',
                    width: 25 * fem,
                    height: 25 * fem,
                  ),
                ),
                Text(
                  // loginwithgooglemHb (223:533)
                  text,
                  style: SafeGoogleFont(
                    'Nunito',
                    fontSize: 18 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.3625 * ffem / fem,
                    color: Color(0xff016699),
                  ),
                ),
              ],
            ),)
      ),
    );
  }
}