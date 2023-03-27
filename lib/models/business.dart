class Business {
  String businessId;
  String businessName;
  String businessAddress;
  String businessEmail;
  String businessPhone;
  String businessLogo;
  bool businessInactive;
  String businessModified;

  Business(
      this.businessId,
      this.businessName,
      this.businessAddress,
      this.businessEmail,
      this.businessPhone,
      this.businessLogo,
      this.businessInactive,
      this.businessModified);

  Business.fromJson(Map<String, dynamic> json)
      : businessId = json['business_id'],
        businessName = json['business_name'],
        businessAddress = json['business_address'],
        businessEmail = json['business_email'],
        businessPhone = json['business_phone'],
        businessLogo = json['business_logo'],
        businessInactive = json['business_inactive'] == 1 ? true : false,
        businessModified = json['business_modified'];
}
