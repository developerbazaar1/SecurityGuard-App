import 'package:flutter/material.dart';
import 'package:myapp/app/theme/constant/constants.dart';
import 'package:myapp/utils.dart';
class buttomModal extends StatelessWidget {
  const buttomModal({
    super.key,
    required this.fem,
    required this.ffem, required this.text, required this.margin, required this.bgColor,
  });

  final double fem;
  final double ffem;
  final String text;
  final double margin;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8,horizontal:margin),





        decoration: BoxDecoration(
          color: bgColor,
          borderRadius:
          BorderRadius.circular(30 * fem),
        ),
        child: Text(
          text,
          style: SafeGoogleFont(
            'Nunito',
            fontSize: 20 * ffem,
            fontWeight: FontWeight.w600,
            height: 1.3625 * ffem / fem,
            color: Color(0xffffffff),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}