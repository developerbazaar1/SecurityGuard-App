

import 'package:intl/intl.dart';

class DateTimeMethods{

  static String DateFormate(String value) {
    DateTime dateTime = DateFormat('dd/MM/yyyy').parse(value);

    String formattedDate = DateFormat('EEEE, MMM dd').format(dateTime);
    return formattedDate;
  }

  static String TimeFormate(String value) {
    DateTime dateTime = DateFormat('HH:mm:ss').parse(value);

    String formattedTime = DateFormat('hh:mm a').format(dateTime);

    return formattedTime;
  }
}