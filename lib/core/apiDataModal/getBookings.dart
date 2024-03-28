class GetBookingsModal {
  bool? status;
  String? message;
  List<Bookings>? bookings;

  GetBookingsModal({this.status, this.message, this.bookings});

  GetBookingsModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['bookings'] != null) {
      bookings = <Bookings>[];
      json['bookings'].forEach((v) {
        bookings!.add(new Bookings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.bookings != null) {
      data['bookings'] = this.bookings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bookings {
  int? id;
  String? vendorId;
  String? customerId;
  String? serviceId;
  String? bookingDateTime;
  String? bookingStartDate;
  String? bookingEndDate;
  String? bookingStartTime;
  String? bookingEndTime;
  String? bookingHours;
  String? serviceCharges;
  String? bookingTotalAmount;
  String? bookingId;
  String? bookingStatus;
  String? location;
  String? zipcode;
  String? paidCurrency;
  String? paidTransactionId;
  String? paidStatus;
  String? paidAmount;
  String? transactionMsg;
  String? customerStatus;
  String? customerRating;
  String? customerFeedback;
  String? createdAt;
  String? updatedAt;
  String? vendordetails;

  Bookings(
      {this.id,
        this.vendorId,
        this.customerId,
        this.serviceId,
        this.bookingDateTime,
        this.bookingStartDate,
        this.bookingEndDate,
        this.bookingStartTime,
        this.bookingEndTime,
        this.bookingHours,
        this.serviceCharges,
        this.bookingTotalAmount,
        this.bookingId,
        this.bookingStatus,
        this.location,
        this.zipcode,
        this.paidCurrency,
        this.paidTransactionId,
        this.paidStatus,
        this.paidAmount,
        this.transactionMsg,
        this.customerStatus,
        this.customerRating,
        this.customerFeedback,
        this.createdAt,
        this.updatedAt,
        this.vendordetails});

  Bookings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vendorId = json['vendor_id'];
    customerId = json['customer_id'];
    serviceId = json['service_id'];
    bookingDateTime = json['booking_date_time'];
    bookingStartDate = json['booking_start_date'];
    bookingEndDate = json['booking_end_date'];
    bookingStartTime = json['booking_start_time'];
    bookingEndTime = json['booking_end_time'];
    bookingHours = json['booking_hours'];
    serviceCharges = json['service_charges'];
    bookingTotalAmount = json['booking_total_amount'];
    bookingId = json['booking_id'];
    bookingStatus = json['booking_status'];
    location = json['location'];
    zipcode = json['zipcode'];
    paidCurrency = json['paid_currency'];
    paidTransactionId = json['paid_transaction_id'];
    paidStatus = json['paid_status'];
    paidAmount = json['paid_amount'];
    transactionMsg = json['transaction_msg'];
    customerStatus = json['customer_status'];
    customerRating = json['customer_rating'];
    customerFeedback = json['customer_feedback'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    vendordetails = json['vendordetails'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['vendor_id'] = this.vendorId;
    data['customer_id'] = this.customerId;
    data['service_id'] = this.serviceId;
    data['booking_date_time'] = this.bookingDateTime;
    data['booking_start_date'] = this.bookingStartDate;
    data['booking_end_date'] = this.bookingEndDate;
    data['booking_start_time'] = this.bookingStartTime;
    data['booking_end_time'] = this.bookingEndTime;
    data['booking_hours'] = this.bookingHours;
    data['service_charges'] = this.serviceCharges;
    data['booking_total_amount'] = this.bookingTotalAmount;
    data['booking_id'] = this.bookingId;
    data['booking_status'] = this.bookingStatus;
    data['location'] = this.location;
    data['zipcode'] = this.zipcode;
    data['paid_currency'] = this.paidCurrency;
    data['paid_transaction_id'] = this.paidTransactionId;
    data['paid_status'] = this.paidStatus;
    data['paid_amount'] = this.paidAmount;
    data['transaction_msg'] = this.transactionMsg;
    data['customer_status'] = this.customerStatus;
    data['customer_rating'] = this.customerRating;
    data['customer_feedback'] = this.customerFeedback;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['vendordetails'] = this.vendordetails;
    return data;
  }
}
