import 'package:flutter/material.dart';
import 'package:myapp/Modals/constants.dart';

import '../core/utils/utils.dart';

class buttomModal extends StatelessWidget {
   buttomModal({
    super.key,
    required this.fem,
    required this.ffem, required this.text, required this.margin,this.onPressed
  });

  final double fem;
  final double ffem;
  final String text;
  final double margin;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 34,vertical: 25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: SafeGoogleFont(
          'Nunito',
          fontSize: 18 * ffem,
          fontWeight: FontWeight.w600,
          height: 1.3625 * ffem / fem,
          color: Color(0xffffffff),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}