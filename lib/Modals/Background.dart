import 'dart:ui';

import 'package:flutter/material.dart';

import '../core/contants/image_constant.dart';
class BackGround extends StatefulWidget {
  const BackGround({super.key, required this.content});
  final Widget content;

  @override
  State<BackGround> createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Color(0x8cffffff),
      body: Stack(
        children: [
          Image.asset(
            CI.imgBackground,

        

            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2), // Adjust the values for desired blur intensity
            child: Container(
              color: Color(0x8cffffff).withOpacity(0.7), // Adjust the opacity as needed
            ),
          ),
          SingleChildScrollView(
            child:widget.content ,
          ),
        ],
      ),
    );
  }
}

