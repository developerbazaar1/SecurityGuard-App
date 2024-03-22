
import 'package:flutter/material.dart';

class SecurityIcon
{
  final String image;
  final dynamic function;
  final String text;

  SecurityIcon( this.image, this.text, this.function);

  @override
  String toString(){
    return 'SecurityIcon{image: $image, text: $text, function:$function}';
  }

}