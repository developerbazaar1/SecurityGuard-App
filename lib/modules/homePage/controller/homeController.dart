import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interval_time_picker/interval_time_picker.dart';
import 'package:intl/intl.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:http/http.dart' as http;

class HomePageController extends GetxController {
  final controller = Rx<DateRangePickerController?>(null);
  final selectDate = Rx<DateTime?>(null);
  RxBool textSubmitted = false.obs;


  /* for checking first and second time*/
  RxBool isFirstTimeSelected = false.obs;
  RxBool isSecondTimeSelected = false.obs;

  RxMap ServicesData = Map().obs;//API data
  RxInt ServiceLength = 0.obs;
  var hour;
  var minute;
  RxBool isSecurityChoosed = false.obs;
  RxInt interval = 30.obs;
  Rx<VisibleStep> visibleStep = VisibleStep.thirtieths.obs;
  Rx<TextEditingController> datecontroller = TextEditingController().obs;
  Rx<TextEditingController> searchController = TextEditingController().obs;
  var timeController = DateTime.now().obs;
  var isLocationEmpty = false.obs;
  var isDateEmpty = false.obs;

  Rx<TimeOfDay> startselectedTime = TimeOfDay.now().obs;
  Rx<TimeOfDay> endselectedTime = TimeOfDay.now().obs;
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
    print(
        '${endselectedTime.value.hour.obs} and ${startselectedTime.value.hour.obs}');

     hour = (endselectedTime.value.hour - startselectedTime.value.hour).obs;

    print('${hour.value} hours');
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
    print('${formatedTime.value} time value');
  }

  var setSecurity;
  var formattedDate = RxString('Choose Date');
  var countTime = RxString('Choose Time');
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

  Future pickerDate() async {
    print("object");
    CalendarFormat _calendarFormat = CalendarFormat.month;
    DateTime _focusDay = DateTime.now();
    DateTime? _selecatedDay;
    return TableCalendar(
      focusedDay: _focusDay,
      firstDay: DateTime(2023),
      lastDay: DateTime(2024),
      calendarFormat: _calendarFormat,
      onDaySelected: ((selectedDay, focusedDay) {
        if (!isSameDay(_selecatedDay, selectedDay)) {}
      }),
    );
  }


  updateHour(value) {
    print(value);
    formattedStartTime.value = value;
  }

  updateMinute(value) {
    startTimeMinute.value = value;
  }

  updateSecurityValue(value) {
    print(value);

    setSecurity.value = value;
  }

  void updateCalenderValue() {
    print('update called');
    controller.value = null;
    print(controller.value.toString());
  }

  updateNullTime() {
    isTimeNull.value = true;
    print(" nulll value${isTimeNull.value}");
  }

  RxList Items = [].obs;
  List<DropdownMenuItem<String>> listSecurity = [
    
    DropdownMenuItem<String>(
      value: 'Option 1',
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage(
              'assets/modules/images/Dog.png',
            ),
            height: 20,
            width: 20,
          ),
          SizedBox(width: 15),
          Text(
            'Dog Units -K9',
            style: searchTextStyle,
          ),
        ],
      ),
    ),
    DropdownMenuItem<String>(
      value: 'Option 2',
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage(
              'assets/modules/images/doorSupervisors.png',
            ),
            height: 20,
            width: 20,
          ),
          SizedBox(width: 15),
          Text(
            'Door Supervisors',
            style: searchTextStyle,
          ),
        ],
      ),
    ),
    DropdownMenuItem<String>(
      value: 'Option 3',
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage(
              'assets/modules/images/SecuritGuards.png',
            ),
            height: 20,
            width: 20,
          ),
          SizedBox(width: 15),
          Text(
            'Security Guards',
            style: searchTextStyle,
          ),
        ],
      ),
    ),
  ].obs;

  void updateDate() {
    formattedDate.value = range.value;
  }

  void updateFormatedTime() {
    formatedDoubleTime.value = hours.value.toStringAsFixed(2);
    print('update method ${formatedDoubleTime.value} and ${hours.value.toStringAsFixed(2)} ');
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

  Future<void> pickDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            appBarTheme: AppBarTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            colorScheme: ColorScheme.light(
              primary: Colors.tealAccent.shade700, // <-- SEE HERE
              onPrimary: Color(0xffffffff), // <-- SEE HERE
              onSurface: ThemeColortDark, // <-- SEE HERE
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
      isDateSelected.value = true;
      updateFormattedDate();
    }
  }

  Rx<Color> BackgroundSelectSecurityColor = Colors.white.obs;
  RxBool isSecurityButtonSelected = false.obs;
  updateSecurityButtonColor(color) {
    bottomsheetButtonColor.value = ThemeColorBackgroundSelectSecurity;
    color = Colors.tealAccent;

    print(color);
    return color;
  }

  void updateFormattedDate() {
    final formatted = DateFormat('dd/MM/yyyy').format(selectedDate.value);
    formattedDate.value = formatted;
    print(formattedDate.value);
  }

  updateCountTime() {
    //  print(formattedStartTime.value.toString());
    print(int.tryParse(formattedStartTime.value.toString()));

    // startTime.value = int.tryParse(formattedStartTime.value.toString()) ?? 0;

    //startTime.value = value1;

    //endTime.value = int.tryParse(formattedStartTime.value.toString()) ?? 0;
    //print(value1);

    // print('${value1} and ${endTime.value}');

    //int.parse(formattedEndTime.value).
// -formattedStartTime.value = countTime.value;
  }
  @override
  void onInit() {
    ServicesAPI();
    super.onInit();
  }
  EnableText() {
    textSubmitted.value = true;
  }
  //  setText(newText) {
  //
  //   dateController.value = newText;
  //
  //
  //   print(dateController.value.toString());// Update the text value
  //   print(formattedDate);// Update the text value
  //    return formattedDate;
  // }

  void ServicesAPI() async {
    print(1);
    try {
      var request = http.Request(
          'GET',
          Uri.parse(
              'http://pragya.dbtechserver.online/security/api/get-services'));

      http.StreamedResponse response = await request.send();
      var data = await response.stream.bytesToString();
      ServicesData.value = jsonDecode(data);
      print(2);
      List list = ServicesData['services'];
       ServiceLength.value = ServicesData['services'].length;

      if (response.statusCode == 200) {
        print(3);


        for(int i= 0;i<ServicesData.value['services'].length;i++){
          print("this is ${ServicesData.value['services'][i]['service_title']}");
   //print( ServicesData['services'][i]['service_title']);

          Items.value.add(ServicesData.value['services'][i]['service_title']);


        }

        print(Items.value);


      } else {
        print(4);
        print(response.reasonPhrase);
      }
    } catch (e) {
      print(5);
      print(e);
    }
  }
}



class DateController extends GetxController {
  var selectedDate = DateTime.now().obs;

  Future<void> pickDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
    }
  }


}
