import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
class NextPageButton extends StatelessWidget {
  const NextPageButton({
    super.key,
    required this.fem,
    required this.ffem, required this.buttonText, this.function, required this.BGColor,
  });

  final double fem;
  final double ffem;
  final String buttonText;
  final dynamic function;
  final Color BGColor;

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 53*fem,
      width: 170*fem,
      margin:
      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),

      child: TextButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => function,));

        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: BGColor,
            borderRadius: BorderRadius.circular(10 * fem),
          ),
          child: Center(
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Nunito',
                fontSize: 24 * ffem,
                fontWeight: FontWeight.w500,
                height: 1.3625 * ffem / fem,
                color: Color(0xffffffff),
              ),
            ),
          ),
        ),
      ),
    );
  }
}