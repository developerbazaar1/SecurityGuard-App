import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Modals/constants.dart';

class ThemeController extends GetxController {
  ThemeData _themeData = ThemeData.light(); // Default theme

  ThemeData get themeData => _themeData;

  // Change the primary color of the theme
  void changePrimaryColor(Color newColor) {
    _themeData = _themeData.copyWith(primaryColor: kThemeColor);
    update(); // Notify listeners about the theme change
  }

// Add more methods to change other theme colors or properties as needed
}
