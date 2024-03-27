import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:myapp/theme/theme_helper.dart';


import 'TokenStorage.dart';
import 'core/contants/text_constant.dart';
import 'core/utils/initial_bindings.dart';
import 'core/utils/logger.dart';




TokenStorage tokenStorage = TokenStorage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);



  runApp(

    GetMaterialApp(

      theme: theme,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      title:CT.app_title ,

      getPages: AppRoutes.pages,
    ),
  );
  });
}
