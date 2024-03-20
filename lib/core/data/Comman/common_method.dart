import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../api_constant/api_constant.dart';


class CM{
  static Future<bool> internetConnectionCheckerMethod() async {
    bool result = await InternetConnectionChecker().hasConnection;
    return result;
  }
  static void showToast(
      String msg, {
        ToastGravity? gravity,
        Color? backgraoundCollor,
        Color? textColor,
      }) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor:backgraoundCollor??Colors.white ,
      textColor: textColor??Color(0xffffffff),
      gravity: gravity ?? ToastGravity.TOP,
    );
  }
  static void noInternet() {
    showToast(
      "Please check your internet connection!",
    );
  }

  static void error() {
    showToast(
      "Something went wrong!",
    );
  }
  static bool responseCheckForGetMethod(
      {http.Response? response,
        bool wantSuccessToast = false,
        bool wantErrorToast = true}) {
    Map<String, dynamic> responseMap = jsonDecode(response?.body ?? "");
    if (response != null && response.statusCode == StatusCodeConstant.OK) {
      if (wantSuccessToast) {
        CM.showToast(responseMap[ApiKey.message]);
      }
      return true;
    } else {
      if (wantErrorToast) {
        CM.showToast(responseMap[ApiKey.message]);
      }
      return false;
    }
  }
  ///For Check Post Api Response
  static bool responseCheckForPostMethod({http.Response? response}) {
    Map<String, dynamic> responseMap = jsonDecode(response?.body ?? "");
    //******************* if (response != null && response.statusCode == StatusCodeConstant.OK) {
    //   CM.showToast(responseMap[ApiKey.message]);
    //   return true;
    // } else {
    //   CM.showToast(responseMap[ApiKey.message]);
    //   return false;
    // }
    return true;
  }
}