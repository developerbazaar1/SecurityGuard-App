import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Moduls/AppSetting/binding/AppSettingBinding.dart';
import '../Moduls/AppSetting/view/appSetting.dart';
import '../Moduls/Booking_Details/binding/bookingDetailsBinding.dart';
import '../Moduls/Booking_Details/view/bookingDetails.dart';
import '../Moduls/ChatScreen/binding/ChatBinding.dart';
import '../Moduls/ChatScreen/view/userChats.dart';
import '../Moduls/ForgetPassword/binding/forgetBinding.dart';
import '../Moduls/ForgetPassword/view/forgotPassword.dart';
import '../Moduls/HomeScreen/binding/homeScreenBinding.dart';
import '../Moduls/HomeScreen/view/HomeScreen.dart';
import '../Moduls/Homepage/binding/HomeBinding.dart';
import '../Moduls/Homepage/view/Home.dart';
import '../Moduls/LoginScreen/binding/loginBinding.dart';
import '../Moduls/LoginScreen/view/login.dart';
import '../Moduls/SignUp/binding/SignUpBinding.dart';
import '../Moduls/SignUp/view/signUp.dart';
import '../Moduls/Splash_Screen/binding/Binding.dart';
import '../Moduls/Splash_Screen/view/splash-screen.dart';





class AppRoutes {



  static const String loginScreen = '/LoginScreen';

  static const String registrationScreen = '/Registeration';

  static const String homeScreen = '/Homescreen';
  static const String home= '/HomePage';
  static const String chat= '/UserChats';
  static const String booking= '/Booking';
  static const String profile= '/ProfilePage';
  static const String edit= '/EditProfilePage';
  static const String updateProfile= '/ProfileUpdated';
  static const String appSetting= '/AppSetting';
  static const String notificationList= '/NotificationList';
  static const String bookingDetails= '/BookingDetails';

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
        SignUpBinding(),
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
      page: () => HomePage(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: chat,
      page: () => UserChats(),
      bindings: [
        ChatBinding(),
      ],
    ),
    // GetPage(
    //   name: booking,
    //   page: () => Booking(),
    //   bindings: [
    //     BookingBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: profile,
    //   page: () => ProfilePage(),
    //   bindings: [
    //     ProfileBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: edit,
    //   page: () => EditProfilePage(),
    //   bindings: [
    //     EditProfileBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: updateProfile,
    //   page: () => ProfileUpdated(),
    //   bindings: [
    //     UpdateProfileBinding(),
    //   ],
    // ),
    GetPage(
      name: appSetting,
      page: () => AppSetting(),
      bindings: [
        AppSettingBinding(),
      ],
    ),
    // GetPage(
    //   name: notificationList,
    //   page: () => NotificationList(),
    //   bindings: [
    //     NotificationhBinding(),
    //   ],
    // ),
    GetPage(
      name: bookingDetails,
      page: () => BookingDetails(),
      binding: BookingDetaialsBinding(),

    ),

  ];
}
