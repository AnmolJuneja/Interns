
class StepTwo {
  bool? success;
  String? message;
  Data? data;

  StepTwo({this.success, this.message, this.data});

  StepTwo.fromJson(Map<String, dynamic> json) {
    if(json["success"] is bool) {
      success = json["success"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  int? id;
  dynamic firstname;
  dynamic lastname;
  dynamic email;
  dynamic dob;
  dynamic gender;
  dynamic profilePic;
  String? phoneNumber;
  dynamic description;
  String? otp;
  String? confirmationToken;
  String? authToken;
  int? isVerified;
  int? profileStep;
  dynamic userDetails;
  dynamic address;
  String? customerId;

  Data({this.id, this.firstname, this.lastname, this.email, this.dob, this.gender, this.profilePic, this.phoneNumber, this.description, this.otp, this.confirmationToken, this.authToken, this.isVerified, this.profileStep, this.userDetails, this.address, this.customerId});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    firstname = json["firstname"];
    lastname = json["lastname"];
    email = json["email"];
    dob = json["dob"];
    gender = json["gender"];
    profilePic = json["profile_pic"];
    if(json["phone_number"] is String) {
      phoneNumber = json["phone_number"];
    }
    description = json["description"];
    if(json["otp"] is String) {
      otp = json["otp"];
    }
    if(json["confirmation_token"] is String) {
      confirmationToken = json["confirmation_token"];
    }
    if(json["auth_token"] is String) {
      authToken = json["auth_token"];
    }
    if(json["is_verified"] is int) {
      isVerified = json["is_verified"];
    }
    if(json["profile_step"] is int) {
      profileStep = json["profile_step"];
    }
    userDetails = json["user_details"];
    address = json["address"];
    if(json["customer_id"] is String) {
      customerId = json["customer_id"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["firstname"] = firstname;
    _data["lastname"] = lastname;
    _data["email"] = email;
    _data["dob"] = dob;
    _data["gender"] = gender;
    _data["profile_pic"] = profilePic;
    _data["phone_number"] = phoneNumber;
    _data["description"] = description;
    _data["otp"] = otp;
    _data["confirmation_token"] = confirmationToken;
    _data["auth_token"] = authToken;
    _data["is_verified"] = isVerified;
    _data["profile_step"] = profileStep;
    _data["user_details"] = userDetails;
    _data["address"] = address;
    _data["customer_id"] = customerId;
    return _data;
  }
}