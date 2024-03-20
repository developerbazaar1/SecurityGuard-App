import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Moduls/HomeScreen/view/HomeScreen.dart';
import 'package:myapp/Moduls/LoginScreen/view/login.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:myapp/theme/theme_helper.dart';



import 'Moduls/Splash_Screen/binding/Binding.dart';
import 'Moduls/Splash_Screen/view/splash-screen.dart';
import 'Moduls/ThemeController.dart';
import 'Moduls/UploadDocument/upload-your-picture.dart';
import 'Moduls/WelcomScreeen.dart';




void main() {
	runApp(
		GetMaterialApp(
			debugShowCheckedModeBanner: false,


			theme: theme,
			initialRoute: AppRoutes.initialRoute,
			getPages: AppRoutes.pages,
		),
	);

}
