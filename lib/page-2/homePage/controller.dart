import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:interval_time_picker/interval_time_picker.dart';
import 'package:intl/intl.dart';
import 'package:myapp/Modals/constants.dart';
import 'package:myapp/main.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:http/http.dart' as http;

import '../../Modals/DropdownItemList.dart';

class HomePageController extends GetxController {
  final dateController = Rx<DateRangePickerController?>(null);
  final dateController1 = Rx<DateRangePickerController?>(null);
  final dateController2 = Rx<DateRangePickerController?>(null);
  final selectDate = Rx<DateTime?>(null);
  RxBool textSubmitted = false.obs;
  RxBool timeSelected = false.obs;







  RxMap ServicesData = Map().obs; //API data
  RxInt ServiceLength = 0.obs;

  RxBool isSecurityChoosed = false.obs;
  RxInt interval = 30.obs;
  Rx<VisibleStep> visibleStep = VisibleStep.thirtieths.obs;
  Rx<TextEditingController> datecontroller = TextEditingController().obs;
  Rx<TextEditingController> searchController = TextEditingController().obs;
  var timeController = DateTime.now().obs;
  var isLocationEmpty = false.obs;



  var text=RxString('00').obs;
  /*-------------------------- time picker --------------------------*/
  Rx<TimeOfDay> startselectedTime = TimeOfDay(hour: 00, minute: 00).obs;
  Rx<TimeOfDay> endselectedTime = TimeOfDay(hour: 00, minute: 00).obs;
  RxBool isTimeNull = false.obs;
  var formatedDoubleTime = '00'.obs;
  var formatedTime = 'Choose'.obs;
  RxInt formatedHour = 0.obs;
  RxInt formatedMinute = 0.obs;

  /* for checking first and second time*/
  RxBool isFirstTimeSelected = false.obs;
  RxBool isSecondTimeSelected = false.obs;
  updateNullTime() {
    isTimeNull.value = true;
    print(" nulll value${isTimeNull.value}");
  }

  void updateFormatedTime() {
    formatedDoubleTime.value = hours.value.toStringAsFixed(2);
    print('update method');
  }
  void setFloatingValue() {
    floatingButton.value = true;
    print("floating button ${floatingButton.value}");
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
    print(
        '${endselectedTime.value.hour.obs} and ${startselectedTime.value.hour.obs}');

    var hour = (endselectedTime.value.hour - startselectedTime.value.hour).obs;
    timeSelected.value =true;


    print('${hour.value} hours');
    if (hour.value < 0) {
      hour.value = 24 + hour.value;
    } else {
      hour.value = hour.value;
    }

    var minute =
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
    formatedHour = hour;
    formatedMinute = minute;

    print('${formatedTime.value} time value');
  }
  /*--------------------------first time picker --------------------------*/
  Rx<TimeOfDay> startselectedTime1 = TimeOfDay(hour: 00, minute: 00).obs;
  Rx<TimeOfDay> endselectedTime1 = TimeOfDay(hour: 00, minute: 00).obs;

  RxBool isTimeNull1 = false.obs;
  var formatedDoubleTime1 = '00'.obs;
  RxBool isFirstTimeSelected1 = false.obs;
  RxBool isSecondTimeSelected1 = false.obs;
  RxInt formatedHour1 = 0.obs;
  RxInt formatedMinute1 = 0.obs;

  var formatedTime1 = 'Choose'.obs;
  updateNullTimeFisrt() {
    isTimeNull1.value = true;

  }

  void updateFormatedTimeFirst() {
    formatedDoubleTime1.value = hours.value.toStringAsFixed(2);
  }
  void setFloatingValueFirst() {
    floatingButton.value = true;
    print("floating button ${floatingButton.value}");
  }
  void setTimeFirst(TimeOfDay time, value) {
// if value is true method called for first time piker
    if (value == true) {
      startselectedTime1.value = time;
      var first = startselectedTime1.value.hour.obs;
      var second = startselectedTime1.value.minute.obs;
      formatedDoubleTime1 = "${first}:${second.value}".obs;
      isFirstTimeSelected1.value = true;
    }
    // if value is true method called for first time piker
    else {
      endselectedTime1.value = time;
      var first = endselectedTime1.value.hour.obs;
      var second = endselectedTime1.value.minute.obs;
      formatedDoubleTime1 = "${first}:${second}".obs;
      isSecondTimeSelected1.value = true;
      //  formattedEndTime.value = time.obs;
    }
    print(
        '${endselectedTime1.value.hour.obs} and ${startselectedTime1.value.hour.obs}');

    var hour = (endselectedTime1.value.hour - startselectedTime1.value.hour).obs;

    print('${hour.value} hours');
    if (hour.value < 0) {
      hour.value = 24 + hour.value;
    } else {
      hour.value = hour.value;
    }

    var minute =
        (startselectedTime1.value.minute - endselectedTime1.value.minute).obs;
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

    formatedTime1.value = "${hour}:${minute}";
    formatedHour1= hour;
    formatedMinute1 = minute;
    print('${formatedTime1.value} time value');
  }
    /*--------------------------second time picker --------------------------*/
  Rx<TimeOfDay> startselectedTime2 = TimeOfDay(hour: 00, minute: 00).obs;
  Rx<TimeOfDay> endselectedTime2 = TimeOfDay(hour: 00, minute: 00).obs;
  RxBool isTimeNull2 = false.obs;
  var formatedDoubleTime2 = '00'.obs;
  var formatedTime2 = 'Choose'.obs;
  RxInt formatedHour2 = 0.obs;
  RxInt formatedMinute2= 0.obs;


  RxBool isFirstTimeSelected2 = false.obs;
  RxBool isSecondTimeSelected2 = false.obs;
  updateNullTimeSecond() {
    isTimeNull2.value = true;

  }

  void updateFormatedTimeSecond() {
    formatedDoubleTime2.value = hours.value.toStringAsFixed(2);

  }

  void setTimeSecond(TimeOfDay time, value) {
// if value is true method called for first time piker
    if (value == true) {
      startselectedTime2.value = time;
      var first = startselectedTime2.value.hour.obs;
      var second = startselectedTime2.value.minute.obs;
      formatedDoubleTime2= "${first}:${second.value}".obs;
      isFirstTimeSelected2.value = true;
    }
    // if value is true method called for first time piker
    else {
      endselectedTime2.value = time;
      var first = endselectedTime2.value.hour.obs;
      var second = endselectedTime2.value.minute.obs;
      formatedDoubleTime2 = "${first}:${second}".obs;
      isSecondTimeSelected2.value = true;
      //  formattedEndTime.value = time.obs;
    }
    print(
        '${endselectedTime2.value.hour.obs} and ${startselectedTime2.value.hour.obs}');

    var hour = (endselectedTime2.value.hour - startselectedTime2.value.hour).obs;

    print('${hour.value} hours');
    if (hour.value < 0) {
      hour.value = 24 + hour.value;
    } else {
      hour.value = hour.value;
    }

    var minute =
        (startselectedTime2.value.minute - endselectedTime2.value.minute).obs;
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

    formatedTime2.value = "${hour}:${minute}";
    formatedHour2 = hour;
    formatedMinute2 = minute;
    print('${formatedTime2.value} time value');
  }







  var setSecurity;

  var countTime = RxString('Choose Time');
  var formattedStartTime = 00.obs;
  var formattedEndTime = 00.obs;
  var endTimeMinute = 00.obs;
  var startTimeMinute = 00.obs;
  var startTime = DateTime.now().obs;
  var endTime = DateTime.now().obs;
  var hours = 00.obs;

  RxInt dropdownvalue = 0.obs;
  var selectedValue;
 // DropdownItem selectedValue = Get.put(DropdownItem(id: 0, title: '', charge: ''));




  // *********************************Floating value**********************
  RxBool floatingButton = false.obs;
  RxInt floatingButtonValue = 0.obs;
  RxBool firstFloatingButton = false.obs;
  RxBool secondFloatingButton = false.obs;



/*------------------------------- for first calender ----------------------*/
  RxString dateCount = ''.obs;
  RxString range = ''.obs;
  RxString rangeCount = ''.obs;
  var selectedDate = DateTime.now().obs;
  var isDateEmpty = false.obs;
  var formattedDate = RxString('Choose Date');
  RxString startdateValue = ''.obs;
  RxString enddateValue = ''.obs;

  RxBool isDateSelected = false.obs;
  void updateDate() {
    formattedDate.value = range.value;
  }

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      startdateValue.value = DateFormat('dd/MM/yyyy').format(args.value.startDate);
      enddateValue.value = DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate);
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

/*------------------------------- for second calender ----------------------*/
  RxString dateCount1 = ''.obs;
  RxString range1 = ''.obs;
  RxString rangeCount1 = ''.obs;
  var selectedDate1 = DateTime.now().obs;
  var isDateEmpty1 = false.obs;
  var formattedDate1 = RxString('Choose Date');
  RxString startdateValue1 = ''.obs;
  RxString enddateValue1 = ''.obs;

  void updateDateFirst() {

    formattedDate1.value = range1.value;

  }

  void onSelectionChangedFirst(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      startdateValue1.value = DateFormat('dd/MM/yyyy').format(args.value.startDate);
      enddateValue1.value = DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate);
      range1 =
          '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} to ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}'
              .obs;
    } else if (args.value is DateTime) {
      selectedDate1 = args.value.obs;
    } else if (args.value is List<DateTime>) {
      dateCount1 = args.value.length.obs;
    } else {
      rangeCount1 = args.value.length.obs;
    }
    print(range1);
  }


/*------------------------------- for third calender ----------------------*/
  RxString dateCount2 = ''.obs;
  RxString range2 = ''.obs;
  RxString rangeCount2 = ''.obs;
  var selectedDate2 = DateTime.now().obs;
  var isDateEmpty2 = false.obs;
  var formattedDate2 = RxString('Choose Date');
  RxString startdateValue2 = ''.obs;
  RxString enddateValue2 = ''.obs;

  void updateDateSecond() {
    formattedDate2.value = range2.value;
    print(formattedDate2.value);
  }

  void onSelectionChangedSecond(DateRangePickerSelectionChangedArgs args) {

    if (args.value is PickerDateRange) {
      startdateValue2.value = DateFormat('dd/MM/yyyy').format(args.value.startDate);
      enddateValue2.value = DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate);
      range2 =
          '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} to ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}'
              .obs;
    } else if (args.value is DateTime) {
      selectedDate2 = args.value.obs;
    } else if (args.value is List<DateTime>) {
      dateCount2 = args.value.length.obs;
    } else {
      rangeCount2 = args.value.length.obs;
    }
    print(range2);
  }

  RxBool isButtonTaped = false.obs;


  RxBool isButtonSelected = false.obs;
  RxBool isTimeSeelcted = false.obs;
  Rx<Color> bottomsheetButtonColor = Color(0x8c000000).obs;
  Rx<Color> bottomsheetselectedfirst = Color(0xffffffff).obs;
  Rx<Color> bottomsheetselectedsecond = Color(0xffffffff).obs;
  Rx<Color> bottomsheetselectedthired = Color(0xffffffff).obs;

  RxInt dropdownValue = 0.obs;
  RxBool validator = false.obs;

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

  List<String> PropertyList = <String>[
    'Dog Units -K9',
    'Door Supervisors',
    'Security Guards'
  ];

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
    dateController.value = null;
    print(dateController.value.toString());
  }



  RxList Items = [].obs;






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



  @override
  void onInit() {
    ServicesAPI();
    floatingButtonValue.value = 0;
    super.onInit();
  }

  // Booking API
  void BookingAPI() async {
    try {
      var headers = {'Authorization': 'Bearer Bearer ${globalusertoken}'};
      var request = http.MultipartRequest(
          'POST',
          Uri.parse(
              'http://pragya.dbtechserver.online/security/api/store-booking'));
      request.fields.addAll({
        'booking_start_date': '2023-11-20',
        'booking_end_date': '2023-11-20',
        'booking_start_time': '14:00:00',
        'booking_end_time': '20:00:00',
        'service_charges': '88',
        'booking_total_amount': '528',
        'service_id': '12',
        'booking_hours': '6',
        'location': searchController.value.text
      });

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print(e);
    }
  }

  EnableText() {
    textSubmitted.value = true;
  }

  /************************************************************************/
  RxList ServiceID = [].obs;

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

      ServiceLength.value = ServicesData['services'].length;

      if (response.statusCode == 200) {
        print(3);
        print('${Items.value} list ##############');

        for (int i = 0; i < ServicesData['services'].length; i++) {

          Items.value.add(DropdownItem(
            id: ServicesData['services'][i]['id'],
              title:ServicesData['services'][i]['service_title'],
            charge: ServicesData['services'][i]['charge'],  ));



          //  print("Length ${ServicesData['services'][i]['service_title']}===========$i");
          //selectedValue= Items.first;
        }


        print('${Items.value} list');
      } else {
        print(4);
        print(response.reasonPhrase);
      }
    } catch (e) {
      print(5);
      print(e);
    }
  }

  void SetValue(value) {
    selectedValue = value;


    validator.value = true;
    print(validator.value);


    isSecurityChoosed.value = true;

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
