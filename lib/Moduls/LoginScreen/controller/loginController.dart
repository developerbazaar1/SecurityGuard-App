import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

}