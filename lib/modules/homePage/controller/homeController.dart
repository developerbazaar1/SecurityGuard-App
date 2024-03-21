import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:interval_time_picker/interval_time_picker.dart';
import 'package:intl/intl.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:http/http.dart' as http;

import '../../../Modals/SecurityList.dart';
import '../../../core/apiDataModal/getServicesModal.dart';
import '../../../core/api_constant/api_constant.dart';
import '../../../core/contants/image_constant.dart';
import '../../../core/contants/text_constant.dart';
import '../../../core/data/Comman/common_method.dart';
import '../../../core/http_methods/http_methods.dart';
import '../../../main.dart';
import '../../dogSecurityDescription/view/dogSecurity.dart';
import '../../securityGuard/view/securityGuard.dart';
import '../../SupervisorDescription/view/supervisor.dart';

class HomePageController extends GetxController {
  final controller = Rx<DateRangePickerController?>(null);

  RxBool textSubmitted = false.obs;

  /* for checking first and second time*/
  RxBool isFirstTimeSelected = false.obs;
  RxBool isSecondTimeSelected = false.obs;

  var hour;
  var minute;
  RxBool isSecurityChoosed = false.obs;
  RxInt interval = 30.obs;
  Rx<VisibleStep> visibleStep = VisibleStep.thirtieths.obs;

  Rx<TextEditingController> searchController = TextEditingController().obs;
  final getServicesData = Rxn<ServicesModal>();
  var isLocationEmpty = false.obs;
  var isDateEmpty = false.obs;

  Rx<TimeOfDay> startselectedTime = TimeOfDay.now().obs;
  Rx<TimeOfDay> endselectedTime = TimeOfDay.now().obs;

  var formattedDate = RxString('Choose Date');
  var formattedStartTime = 00.obs;
  var formattedEndTime = 00.obs;
  var endTimeMinute = 00.obs;
  var startTimeMinute = 00.obs;
  var startTime = DateTime.now().obs;
  var endTime = DateTime.now().obs;
  var hours = 00.obs;
  RxBool isTimeNull = false.obs;
  var selectedValue;
  var formatedDoubleTime = '00'.obs;
  var formatedTime = 'Choose'.obs;

  Rx<DateTime> selectedDateCal = DateTime(2023, 9, 23).obs;
  RxString selectedDateCalender = ''.obs;
  RxString dateCount = ''.obs;
  RxString range = ''.obs;
  RxString rangeCount = ''.obs;

  RxBool isButtonTaped = false.obs;
  var selectedDate = DateTime.now().obs;

  RxBool isDateSelected = false.obs;
  RxBool isButtonSelected = false.obs;
  RxBool isTimeSeelcted = false.obs;
  Rx<Color> bottomsheetButtonColor = Color(0x8c000000).obs;
  Rx<Color> bottomsheetselectedfirst = Color(0xffffffff).obs;
  Rx<Color> bottomsheetselectedsecond = Color(0xffffffff).obs;
  Rx<Color> bottomsheetselectedthired = Color(0xffffffff).obs;

  RxList<Services> Items = <Services>[].obs;
  Rx<Color> BackgroundSelectSecurityColor = Colors.white.obs;
  RxBool isSecurityButtonSelected = false.obs;


  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List SecurityList = [
    SecurityIcon(CI.imgDog, CT.dog_unit, DogSecurityInfo()),
    SecurityIcon(
        CI.imgDoorSupervisors, CT.door_supervisiors, SuprevisorInfo()),
    SecurityIcon(CI.imgSecuritGuards, CT.security_need, SecurityGardInfo()),
  ];
  void _getKey() async {

    final prefs = await SharedPreferences.getInstance();
    final key = prefs.get('token');

    globalusertoken = key.toString();



    print('YOUR KEY - "$globalusertoken"');
  }
  @override
  void onInit() async {
    _getKey();
    if (await CM.internetConnectionCheckerMethod()) {
      try {
        await getServiesAPICalling();
      } catch (e) {
        print("api not calling");
      }
    }

    super.onInit();
  }

  void setTime(TimeOfDay time, value) {
// if value is true method called for first time piker
    if (value == true) {
      startselectedTime.value = time;
      var first = startselectedTime.value.hour.obs;
      var second = startselectedTime.value.minute.obs;
      formatedDoubleTime = "${first}:${second.value}".obs;
      isFirstTimeSelected.value = true;
    }
    // if value is true method called for first time piker
    else {
      endselectedTime.value = time;
      var first = endselectedTime.value.hour.obs;
      var second = endselectedTime.value.minute.obs;
      formatedDoubleTime = "${first}:${second}".obs;
      isSecondTimeSelected.value = true;
      //  formattedEndTime.value = time.obs;
    }
    hour = (endselectedTime.value.hour - startselectedTime.value.hour).obs;

    if (hour.value < 0) {
      hour.value = 24 + hour.value;
    } else {
      hour.value = hour.value;
    }

    minute =
        (startselectedTime.value.minute - endselectedTime.value.minute).obs;
    if (minute.value == 30 || minute.value == 0) {
    } else {
      if (minute.value <= 30) {
        minute.value = 30;
      } else {
        minute.value = 00;
      }
    }
    if (hour.value == 0 && minute.value == 0) {
      hour.value = 24;
    }

    formatedTime.value = "${hour}:${minute}";
  }

  updateNullTime() {
    isTimeNull.value = true;
  }

  void updateDate() {
    formattedDate.value = range.value;
  }

  void updateFormatedTime() {
    formatedDoubleTime.value = hours.value.toStringAsFixed(2);
  }

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      range =
          '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} to ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}'
              .obs;
    } else if (args.value is DateTime) {
      selectedDate = args.value.obs;
    } else if (args.value is List<DateTime>) {
      dateCount = args.value.length.obs;
    } else {
      rangeCount = args.value.length.obs;
    }
  }

  Future<void> getServiesAPICalling() async {
    http.Response? response = await HttpMethod.instance.getRequest(
      url: UriConstant.getServicesUrl,
    );
    if (response!.statusCode == 200 &&
        CM.responseCheckForGetMethod(response: response)) {
      getServicesData.value =
          await ServicesModal.fromJson(jsonDecode(response.body ?? ""));
      if (getServicesData.value != null) {
        getServicesData.value!.services!.forEach((element) {
          Items.add(element);
        });
      } else {
        print("data is not coming");
      }
    }
  }
}


