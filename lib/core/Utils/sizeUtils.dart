import 'package:flutter/material.dart';

class SizeUtils {
  static SizeUtils? _instance;

  late double _screenWidth;
  late double _screenHeight;

  SizeUtils._(); // Private constructor
  static SizeUtils get instance {
    _instance ??= SizeUtils._(); // Initialize only once
    return _instance!;
  }

  void init(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;
  }

  double get screenWidth => _screenWidth;

  double get screenHeight => _screenHeight;

  double get screenRatio => _screenWidth / _screenHeight;

  double adaptWidth(double size) {
    return size * _screenWidth / 375.0; // You can adjust the base width (375.0) as needed
  }

  double adaptHeight(double size) {
    return size * _screenHeight / 812.0; // You can adjust the base height (812.0) as needed
  }
}