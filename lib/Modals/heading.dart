import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
class Heading extends StatelessWidget {
  const Heading({
    super.key,
    required this.fem,
    required this.ffem, required this.text,

  });

  final double fem;
  final double ffem;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0* fem, 0 * fem, 0 * fem, 0 * fem),

      child: Center(
        child: Text(
          // signupasacustomerVh3 (561:172)
          text,
          textAlign: TextAlign.center,
          style: SafeGoogleFont(


            'Noto Sans',
            fontSize: 24 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.3625 * ffem / fem,
            color: Color(0xff000000),
          ),
        ),
      ),
    );
  }
}