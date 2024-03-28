import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart'as http;
import '../../../Modals/DateTimeMethods.dart';
import '../../../core/apiDataModal/getBookings.dart';
import '../../../core/api_constant/api_constant.dart';
import '../../../core/data/Comman/common_method.dart';
import '../../../core/http_methods/http_methods.dart';

class bookingController extends GetxController{

  var getBookingsData = Rxn<GetBookingsModal>();
  RxString formateDate = ''.obs;
  RxString formateTime = ''.obs;



  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    await getBookingsApiCalling();
  }


  Future<void> getBookingsApiCalling() async {
    http.Response? response = await HttpMethod.instance.getRequest(
      url: UriConstant.getBookingsUrl,
    );

    if (response!.statusCode == 200 &&
        CM.responseCheckForGetMethod(response: response)) {

      getBookingsData.value = await GetBookingsModal.fromJson(jsonDecode(response.body ?? ""));

    }
  }




}