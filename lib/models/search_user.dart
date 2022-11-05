
class SearchUser {
  bool? success;
  String? message;
  List<ListOfUser> data = [];
  int? totalRecords;

  SearchUser({this.success, this.message, required this.data, this.totalRecords});

  SearchUser.fromJson(Map<String, dynamic> json) {
    if(json["success"] is bool) {
      success = json["success"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is List) {
      data = (json["data"] == null ? null : (json["data"] as List).map((e) => ListOfUser.fromJson(e)).toList())!;
    }
    if(json["totalRecords"] is int) {
      totalRecords = json["totalRecords"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data.map((e) => e.toJson()).toList();
    }
    _data["totalRecords"] = totalRecords;
    return _data;
  }
}

class ListOfUser {
  int? id;
  String? firstname;
  String? lastname;
  String? email;
  String? emailVerifiedAt;
  String? phoneNumber;
  dynamic phoneNumberVerifiedAt;
  String? dob;
  String? gender;
  String? profilePic;
  dynamic description;
  String? otp;
  String? confirmationToken;
  dynamic authToken;
  dynamic deviceToken;
  int? profileStep;
  int? isVerified;
  int? isDeleted;
  String? createdAt;
  String? updatedAt;
  String? cardId;
  String? customerId;
  String? timezone;
  int? roleId;
  dynamic deletedAt;

  ListOfUser({this.id, this.firstname, this.lastname, this.email, this.emailVerifiedAt, this.phoneNumber, this.phoneNumberVerifiedAt, this.dob, this.gender, this.profilePic, this.description, this.otp, this.confirmationToken, this.authToken, this.deviceToken, this.profileStep, this.isVerified, this.isDeleted, this.createdAt, this.updatedAt, this.cardId, this.customerId, this.timezone, this.roleId, this.deletedAt});

  ListOfUser.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["firstname"] is String) {
      firstname = json["firstname"];
    }
    if(json["lastname"] is String) {
      lastname = json["lastname"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["email_verified_at"] is String) {
      emailVerifiedAt = json["email_verified_at"];
    }
    if(json["phone_number"] is String) {
      phoneNumber = json["phone_number"];
    }
    phoneNumberVerifiedAt = json["phone_number_verified_at"];
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["profile_pic"] is String) {
      profilePic = json["profile_pic"];
    }
    description = json["description"];
    if(json["otp"] is String) {
      otp = json["otp"];
    }
    if(json["confirmation_token"] is String) {
      confirmationToken = json["confirmation_token"];
    }
    authToken = json["auth_token"];
    deviceToken = json["device_token"];
    if(json["profile_step"] is int) {
      profileStep = json["profile_step"];
    }
    if(json["is_verified"] is int) {
      isVerified = json["is_verified"];
    }
    if(json["is_deleted"] is int) {
      isDeleted = json["is_deleted"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if(json["card_id"] is String) {
      cardId = json["card_id"];
    }
    if(json["customer_id"] is String) {
      customerId = json["customer_id"];
    }
    if(json["timezone"] is String) {
      timezone = json["timezone"];
    }
    if(json["role_id"] is int) {
      roleId = json["role_id"];
    }
    deletedAt = json["deleted_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["firstname"] = firstname;
    _data["lastname"] = lastname;
    _data["email"] = email;
    _data["email_verified_at"] = emailVerifiedAt;
    _data["phone_number"] = phoneNumber;
    _data["phone_number_verified_at"] = phoneNumberVerifiedAt;
    _data["dob"] = dob;
    _data["gender"] = gender;
    _data["profile_pic"] = profilePic;
    _data["description"] = description;
    _data["otp"] = otp;
    _data["confirmation_token"] = confirmationToken;
    _data["auth_token"] = authToken;
    _data["device_token"] = deviceToken;
    _data["profile_step"] = profileStep;
    _data["is_verified"] = isVerified;
    _data["is_deleted"] = isDeleted;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["card_id"] = cardId;
    _data["customer_id"] = customerId;
    _data["timezone"] = timezone;
    _data["role_id"] = roleId;
    _data["deleted_at"] = deletedAt;
    return _data;
  }
}