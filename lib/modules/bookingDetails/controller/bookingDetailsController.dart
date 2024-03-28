import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:intl/intl.dart';

import '../../../Modals/DateTimeMethods.dart';
import '../../../core/apiDataModal/getBookingDetatilsModal.dart';
import '../../../core/api_constant/api_constant.dart';
import '../../../core/data/Comman/common_method.dart';
import '../../../core/http_methods/http_methods.dart';
import '../../Splash_Screen/controller/SplashScreenController.dart';

class BookingDetailsController extends GetxController {
  final arguments = Get.arguments;
  var selectedValue;
  TextEditingController feedbackController = TextEditingController();

  RxString selectedJob = ''.obs;
  var getBookingDetailsData = Rxn<GetBookingDetailsModal>();
  Map<String, dynamic> queryParametersForBookingDetails = {};

  RxDouble rating = 0.0.obs;
  Map<String, dynamic> bodyParamsForStatus = {};
  Map<String, dynamic> responseMapForStatus = {};

  RxString formateStartTime = ''.obs;
  RxString formateEndTime = ''.obs;
  RxString formateEndDate = ''.obs;
  RxString formateStartDate = ''.obs;
  RxList Items = ['Job Not Started', 'Job In Progress', 'Job Done'].obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getBookingDetailsAPI();
  }

  Future<void> getBookingDetailsAPI() async {
    var url = Uri.parse(UriConstant.getBookingDetailsUrl);

    var queryParams = {
      ApiKey.booking_id: arguments[2],
    };
    var uri = Uri.parse(url.toString()).replace(queryParameters: queryParams);

    try {
      http.Response response = await http.get(
        uri,
        headers: {
          ApiKey.authorization: '${ApiKey.bearer} ${globalusertoken}',
        },
      );

      if (response.statusCode == 200) {
        print(response.body);

        getBookingDetailsData.value =
            GetBookingDetailsModal.fromJson(jsonDecode(response.body));

        formateStartDate.value = DateTimeMethods.DateFormate(
            getBookingDetailsData.value!.booking!.bookingStartDate!.toString());
        formateEndDate.value = DateTimeMethods.DateFormate(
            getBookingDetailsData.value!.booking!.bookingEndDate!.toString());
        formateStartTime.value = DateTimeMethods.TimeFormate(
            getBookingDetailsData.value!.booking!.bookingStartTime!.toString());
        formateEndTime.value = DateTimeMethods.TimeFormate(
            getBookingDetailsData.value!.booking!.bookingStartTime!.toString());
      } else {
        print('Failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<bool> cusomerAPI() async {
//    isLoading.value = true;
    bodyParamsForStatus = {
      ApiKey.customer_status: selectedValue,
      ApiKey.booking_id: arguments[2],
      ApiKey.customer_rating: rating.value.toString(),
      ApiKey.customer_feedback: feedbackController.text
    };

    http.Response? response = await HttpMethod.instance.postRequest(
      url: UriConstant.getCustomerStatusUrl,
      bodyParams: bodyParamsForStatus,
    );

    //isLoading.value = true;
    if (CM.responseCheckForPostMethod(response: response)) {
      responseMapForStatus = jsonDecode(response!.body);

      //isLoading.value = true;

      if (responseMapForStatus[ApiKey.status] == true) {
        CM.showToast(responseMapForStatus[ApiKey.message]);




      } else {
        //  isLoading.value = false;

        // CM.showToast(responseMapForCard[ApiKey.message]);
      }

      bodyParamsForStatus.clear();
      //  isLoading.value = false;
      return true;
    } else {
      bodyParamsForStatus.clear();
      //isLoading.value = false;
      return false;
    }
  }


}
