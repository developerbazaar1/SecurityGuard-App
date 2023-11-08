import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/page-2/HomeScreen/HomeScreen.dart';
import 'package:myapp/page-2/Splash_Screen/Binding.dart';
import 'package:myapp/page-2/Splash_Screen/splash-screen.dart';
import 'package:myapp/page-2/Login/login.dart';

import 'TokenStorage.dart';
var globalusertoken;
Map<int, Color> color = {
  50: Colors.blue.shade50,
  100: Colors.blue.shade100,
  200: Colors.blue.shade200,
  300: Colors.blue.shade300,
  400: Colors.blue.shade400,
  500: Colors.blue.shade500,
  600: Colors.blue.shade600,
  700: Colors.blue.shade700,
  800: Colors.blue.shade800,
  900: Colors.blue.shade900,
};

MaterialColor primeColor = MaterialColor(0xff016699, color);
TokenStorage tokenStorage = TokenStorage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(

    GetMaterialApp(

      theme: ThemeData(
        primarySwatch: primeColor,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',

      getPages: [
        GetPage(
            name: '/splash',
            page: () => SplashScreen(),
            binding: SplashBinding()),
        GetPage(
            name: '/main', page: () {


              return globalusertoken == null?LoginScreen():Homescreen(selectedIndexValue: 0);
        }, binding: MainBinding()),
      ],
    ),
  );
}
