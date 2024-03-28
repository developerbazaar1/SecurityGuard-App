class GetBookingDetailsModal {
  bool? status;
  String? message;
  Booking? booking;
  String? vendorDetails;
  ServiceDetails? serviceDetails;
  String? galleryImages;

  GetBookingDetailsModal(
      {this.status,
        this.message,
        this.booking,
        this.vendorDetails,
        this.serviceDetails,
        this.galleryImages});

  GetBookingDetailsModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    booking =
    json['booking'] != null ? new Booking.fromJson(json['booking']) : null;
    vendorDetails = json['vendor_details'];
    serviceDetails = json['service_details'] != null
        ? new ServiceDetails.fromJson(json['service_details'])
        : null;
    galleryImages = json['gallery_images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.booking != null) {
      data['booking'] = this.booking!.toJson();
    }
    data['vendor_details'] = this.vendorDetails;
    if (this.serviceDetails != null) {
      data['service_details'] = this.serviceDetails!.toJson();
    }
    data['gallery_images'] = this.galleryImages;
    return data;
  }
}

class Booking {
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

  Booking(
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
        this.updatedAt});

  Booking.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class ServiceDetails {
  int? id;
  String? serviceTitle;
  String? serviceImage;
  String? charge;
  Null? designation;
  Null? experience;
  String? verifiedBadge;
  Null? serviceOffered;
  Null? shortDescription;
  String? description;
  Null? serviceId;
  Null? commission;
  String? serviceGalleryImage1;
  String? serviceGalleryImage2;
  String? serviceGalleryImage3;
  String? serviceGalleryImage4;
  String? createdAt;
  String? updatedAt;

  ServiceDetails(
      {this.id,
        this.serviceTitle,
        this.serviceImage,
        this.charge,
        this.designation,
        this.experience,
        this.verifiedBadge,
        this.serviceOffered,
        this.shortDescription,
        this.description,
        this.serviceId,
        this.commission,
        this.serviceGalleryImage1,
        this.serviceGalleryImage2,
        this.serviceGalleryImage3,
        this.serviceGalleryImage4,
        this.createdAt,
        this.updatedAt});

  ServiceDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceTitle = json['service_title'];
    serviceImage = json['service_image'];
    charge = json['charge'];
    designation = json['designation'];
    experience = json['experience'];
    verifiedBadge = json['verified_badge'];
    serviceOffered = json['service_offered'];
    shortDescription = json['short_description'];
    description = json['description'];
    serviceId = json['service_id'];
    commission = json['commission'];
    serviceGalleryImage1 = json['service_gallery_image1'];
    serviceGalleryImage2 = json['service_gallery_image2'];
    serviceGalleryImage3 = json['service_gallery_image3'];
    serviceGalleryImage4 = json['service_gallery_image4'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['service_title'] = this.serviceTitle;
    data['service_image'] = this.serviceImage;
    data['charge'] = this.charge;
    data['designation'] = this.designation;
    data['experience'] = this.experience;
    data['verified_badge'] = this.verifiedBadge;
    data['service_offered'] = this.serviceOffered;
    data['short_description'] = this.shortDescription;
    data['description'] = this.description;
    data['service_id'] = this.serviceId;
    data['commission'] = this.commission;
    data['service_gallery_image1'] = this.serviceGalleryImage1;
    data['service_gallery_image2'] = this.serviceGalleryImage2;
    data['service_gallery_image3'] = this.serviceGalleryImage3;
    data['service_gallery_image4'] = this.serviceGalleryImage4;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
