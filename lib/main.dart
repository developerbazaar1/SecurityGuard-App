import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Moduls/HomeScreen/HomeScreen.dart';
import 'package:myapp/Moduls/Profile/EditProfile/profileUpdatePage.dart';
import 'package:myapp/Moduls/login.dart';



import 'Moduls/Splash_Screen/Binding.dart';
import 'Moduls/Splash_Screen/splash-screen.dart';
import 'Moduls/ThemeController.dart';
import 'Moduls/UploadDocument/upload-your-picture.dart';
import 'Moduls/WelcomScreeen.dart';


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
void main() {
	runApp(
		GetMaterialApp(
			debugShowCheckedModeBanner: false,
			theme: ThemeData(

				primarySwatch: primeColor,
			),
			initialRoute: '/splash',
			getPages: [
				GetPage(name: '/splash', page: () => SplashScreen(), binding: SplashBinding()),
				GetPage(name: '/main', page: () => WelcomeScreen(), binding: MainBinding()),
			],
		),
	);
	Get.put(ThemeController());
}
