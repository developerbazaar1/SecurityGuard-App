import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:myapp/modules/HomeScreen/binding/homeBinding.dart';
import 'package:myapp/modules/bookingDetails/view/bookingDetails.dart';
import 'package:myapp/modules/termCondition/binding/termConditionBinding.dart';
import '../modules/AppSetting/binding/appSettingBinding.dart';
import '../modules/AppSetting/view/appSetting.dart';
import '../modules/Booking/binding/bookingBinding.dart';
import '../modules/Booking/view/booking.dart';
import '../modules/Chat/binding/chatBInding.dart';
import '../modules/Chat/view/chats.dart';
import '../modules/GuardDescription/binding/guardBinding.dart';
import '../modules/GuardDescription/view/guardDescription.dart';
import '../modules/HomeScreen/view/HomeScreen.dart';
import '../modules/Login/binding/LoginBinding.dart';
import '../modules/Login/view/LoginScreen.dart';
import '../modules/PrivacyPolicy/binding/privatePolicyBinding.dart';
import '../modules/PrivacyPolicy/view/privacyPolicy-.dart';
import '../modules/Profile/binding/profileBinding.dart';
import '../modules/Profile/view/profilePage.dart';
import '../modules/Registration/binding/RegisterBinding.dart';
import '../modules/Registration/view/registration.dart';
import '../modules/Splash_Screen/binding/splashBinding.dart';
import '../modules/Splash_Screen/view/splashScreen.dart';
import '../modules/SupervisorDescription/binding/supervisorBinding.dart';
import '../modules/SupervisorDescription/view/supervisor.dart';
import '../modules/bookingDetails/binding/bookingDetailsBinding.dart';
import '../modules/dogSecurityDescription/binding/dogSecurityBinding.dart';
import '../modules/dogSecurityDescription/view/dogSecurity.dart';
import '../modules/helpSupport/binding/helpSupportBinding.dart';
import '../modules/helpSupport/view/helpSupport.dart';
import '../modules/notification/binding/notificationBinding.dart';
import '../modules/notification/view/notification-list.dart';
import '../modules/editProfile/binding/editBinding.dart';
import '../modules/editProfile/view/editProfilePage.dart';
import '../modules/forgetPassword/binding/forgetBinding.dart';
import '../modules/forgetPassword/view/forgot-password.dart';
import '../modules/homePage/binding/homeBinding.dart';
import '../modules/homePage/view/home-page.dart';
import '../modules/paymentDone/controller/paymentDoneController.dart';
import '../modules/paymentDone/view/paymentDone.dart';
import '../modules/profileUpdate/binding/profileBinding.dart';
import '../modules/profileUpdate/view/profileUpdated.dart';
import '../modules/securityGuard/binding/securityGuardBinding.dart';
import '../modules/securityGuard/view/securityGuard.dart';
import '../modules/termCondition/view/termsCondition.dart';



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
  static const String bookingDetails= '/BookingDetails';
  static const String dogSecurity= '/DogSecurityInfo';
  static const String guard= '/GuardDescription';
  static const String helpSupport= '/HelpSupport';
  static const String paymentDone= '/PaymentDone';
  static const String privacyPolicy= '/PrivacyPolicy';
  static const String securityGard= '/SecurityGardInfo';
  static const String termsCondition= '/TermsCondition';
  static const String suprevisor= '/SuprevisorInfo';

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
    GetPage(
      name: bookingDetails,
      page: () => BookingDetails(),
      binding: BookingDetailsBinding(),
      bindings: [
        BookingDetailsBinding(),
      ],
    ),
    GetPage(
      name: dogSecurity,
      page: () => DogSecurityInfo(),
      binding: DogSecurityBinding(),

    ),
    GetPage(
      name: guard,
      page: () => GuardDescription(),
      binding: GuardBinding(),

    ),
    GetPage(
      name: helpSupport,
      page: () => HelpSupport(),
      binding: HelpSupportBinding(),

    ),
    GetPage(
      name: paymentDone,
      page: () => PaymentDone(),
      binding: PaymentDoneBinding(),

    ),
    GetPage(
      name: privacyPolicy,
      page: () => PrivacyPolicy(),
      binding: PrivacyPolicyBinding(),

    ),
    GetPage(
      name: securityGard,
      page: () => SecurityGardInfo(),
      binding: SecurityGuardBinding(),

    ),
    GetPage(
      name: termsCondition,
      page: () => TermsCondition(),
      binding: TermConditionBinding(),

    ),
    GetPage(
      name: suprevisor,
      page: () => SuprevisorInfo(),
      binding: SupervisiorBinding(),

    ),

  ];
}
