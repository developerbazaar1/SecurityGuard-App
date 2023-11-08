import 'package:flutter/material.dart';

import '../utils.dart';
class Logo extends StatelessWidget {
  const Logo({
    super.key,
    required this.fem,
  });

  final double fem;

  @override
  Widget build(BuildContext context) {
    return Container(
      // raynetfinallogo1b4m (173:76)
      margin: EdgeInsets.fromLTRB(0 * fem, 60 * fem, 0.29 * fem, 20 * fem),
      width: 104.71 * fem,
      height: 80 * fem,
      child: Image.asset(
        'assets/page-1/images/raynet-final-logo-1-Mhs.png',
        fit: BoxFit.cover,
      ),
    );
  }
}



class BackLogin extends StatelessWidget {
  const BackLogin({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return   Container(
      margin: EdgeInsets.only(top: 0 * fem, left: 30 * fem),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
                0 * fem, 0 * fem, 0 * fem, 0 * fem),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 14.16 * fem, 0.01 * fem),
                      width: 8.76 * fem,
                      height: 16.68 * fem,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.black,
                        weight: 0.5,
                      ),
                    ),
                    Text(
                      'Back',
                      style: SafeGoogleFont(
                        'Nunito',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3625 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Logo(fem: fem),
          SizedBox(width: 80,)

        ],
      ),
    );
  }
}
