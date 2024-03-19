import 'package:flutter/material.dart';
import 'package:myapp/Modals/constants.dart';

import '../core/utils/utils.dart';

class buttomModal extends StatelessWidget {
  const buttomModal({
    super.key,
    required this.fem,
    required this.ffem, required this.text, required this.margin,
  });

  final double fem;
  final double ffem;
  final String text;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8,horizontal:margin),





        decoration: BoxDecoration(
          color: ThemeColor,
          borderRadius:
          BorderRadius.circular(30 * fem),
        ),
        child: Text(
          text,
          style: SafeGoogleFont(
            'Nunito',
            fontSize: 20 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.3625 * ffem / fem,
            color: Color(0xffffffff),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}