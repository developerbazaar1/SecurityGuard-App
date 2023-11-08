import 'package:flutter/material.dart';

import 'constants.dart';
class InputHeading extends StatelessWidget {
  const InputHeading({
    super.key, required this.text, required this.image,
  });
final String text;
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Image(
            image: AssetImage(image),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: hintStyle,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}