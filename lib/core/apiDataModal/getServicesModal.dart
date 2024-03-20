class ServicesModal {
  bool? status;
  String? message;
  List<Services>? services;

  ServicesModal({this.status, this.message, this.services});

  ServicesModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(new Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.services != null) {
      data['services'] = this.services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Services {
  int? id;
  String? serviceTitle;
  String? serviceImage;
  String? charge;
  String? designation;
  String? experience;
  String? verifiedBadge;
  String? serviceOffered;
  String? shortDescription;
  String? description;
  String? serviceId;
  String? commission;
  String? serviceGalleryImage1;
  String? serviceGalleryImage2;
  String? serviceGalleryImage3;
  String? serviceGalleryImage4;
  String? createdAt;
  String? updatedAt;

  Services(
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

  Services.fromJson(Map<String, dynamic> json) {
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
