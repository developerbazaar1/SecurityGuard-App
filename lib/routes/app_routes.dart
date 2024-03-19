import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:myapp/modules/HomeScreen/binding/homeBinding.dart';

import '../modules/AppSetting/binding/appSettingBinding.dart';
import '../modules/AppSetting/view/appSetting.dart';
import '../modules/Booking/binding/bookingBinding.dart';
import '../modules/Booking/view/booking.dart';
import '../modules/Chat/binding/chatBInding.dart';
import '../modules/Chat/view/chats.dart';
import '../modules/HomeScreen/view/HomeScreen.dart';
import '../modules/Login/binding/LoginBinding.dart';
import '../modules/Login/view/LoginScreen.dart';
import '../modules/Profile/binding/profileBinding.dart';
import '../modules/Profile/view/profilePage.dart';
import '../modules/Registration/binding/RegisterBinding.dart';
import '../modules/Registration/view/registration.dart';
import '../modules/Splash_Screen/binding/splashBinding.dart';
import '../modules/Splash_Screen/view/splashScreen.dart';
import '../modules/notification/binding/notificationBinding.dart';
import '../modules/notification/view/notification-list.dart';
import '../modules/editProfile/binding/editBinding.dart';
import '../modules/editProfile/view/editProfilePage.dart';
import '../modules/forgetPassword/binding/forgetBinding.dart';
import '../modules/forgetPassword/view/forgot-password.dart';
import '../modules/homePage/binding/homeBinding.dart';
import '../modules/homePage/view/home-page.dart';
import '../modules/profileUpdate/binding/profileBinding.dart';
import '../modules/profileUpdate/view/profileUpdated.dart';



class AppRoutes {



  static const String loginScreen = '/LoginScreen';

  static const String registrationScreen = '/Registeration';

  static const String homeScreen = '/Homescreen';
  static const String home= '/Home';
  static const String chat= '/Chat';
  static const String booking= '/Booking';
  static const String profile= '/ProfilePage';
  static const String edit= '/EditProfilePage';
  static const String updateProfile= '/ProfileUpdated';
  static const String appSetting= '/AppSetting';
  static const String notificationList= '/NotificationList';

  static const String forgetScreen = '/ForgotPasswordScreen';





  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [




    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: registrationScreen,
      page: () => Registeration(),
      bindings: [
        RegisterationBinding(),
      ],
    ),
    GetPage(
      name: forgetScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgetBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => Homescreen(selectedIndexValue: 0,),
      bindings: [
        HomeScreenBinding(),
      ],
    ),
    GetPage(
      name: home,
      page: () => Home(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: chat,
      page: () => Chat(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: booking,
      page: () => Booking(),
      bindings: [
        BookingBinding(),
      ],
    ),
    GetPage(
      name: profile,
      page: () => ProfilePage(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: edit,
      page: () => EditProfilePage(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: updateProfile,
      page: () => ProfileUpdated(),
      bindings: [
        UpdateProfileBinding(),
      ],
    ),
    GetPage(
      name: appSetting,
      page: () => AppSetting(),
      bindings: [
        AppSettingBinding(),
      ],
    ),
    GetPage(
      name: notificationList,
      page: () => NotificationList(),
      bindings: [
        NotificationhBinding(),
      ],
    ),

  ];
}
