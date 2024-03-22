class GetUserData {
  bool? status;
  String? message;
  User? user;

  GetUserData({this.status, this.message, this.user});

  GetUserData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? phone;
  Null? address;
  Null? profileImage;
  String? userType;
  Null? provider;
  Null? providerId;
  Null? vendorServices;
  Null? profileDescription;
  String? userId;
  String? availability;
  String? appUpdateOnOff;
  String? notificationOnOff;
  Null? emailVerifiedAt;
  Null? lastActivityAt;
  Null? ip;
  String? status;
  Null? accountHolderName;
  Null? swiftCode;
  Null? accountNumber;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
        this.name,
        this.email,
        this.phone,
        this.address,
        this.profileImage,
        this.userType,
        this.provider,
        this.providerId,
        this.vendorServices,
        this.profileDescription,
        this.userId,
        this.availability,
        this.appUpdateOnOff,
        this.notificationOnOff,
        this.emailVerifiedAt,
        this.lastActivityAt,
        this.ip,
        this.status,
        this.accountHolderName,
        this.swiftCode,
        this.accountNumber,
        this.createdAt,
        this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    profileImage = json['profile_image'];
    userType = json['user_type'];
    provider = json['provider'];
    providerId = json['provider_id'];
    vendorServices = json['vendor_services'];
    profileDescription = json['profile_description'];
    userId = json['user_id'];
    availability = json['availability'];
    appUpdateOnOff = json['app_update_on_off'];
    notificationOnOff = json['notification_on_off'];
    emailVerifiedAt = json['email_verified_at'];
    lastActivityAt = json['last_activity_at'];
    ip = json['ip'];
    status = json['status'];
    accountHolderName = json['account_holder_name'];
    swiftCode = json['swift_code'];
    accountNumber = json['account_number'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['profile_image'] = this.profileImage;
    data['user_type'] = this.userType;
    data['provider'] = this.provider;
    data['provider_id'] = this.providerId;
    data['vendor_services'] = this.vendorServices;
    data['profile_description'] = this.profileDescription;
    data['user_id'] = this.userId;
    data['availability'] = this.availability;
    data['app_update_on_off'] = this.appUpdateOnOff;
    data['notification_on_off'] = this.notificationOnOff;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['last_activity_at'] = this.lastActivityAt;
    data['ip'] = this.ip;
    data['status'] = this.status;
    data['account_holder_name'] = this.accountHolderName;
    data['swift_code'] = this.swiftCode;
    data['account_number'] = this.accountNumber;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
