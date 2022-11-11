class FeedCommentList {
  bool? success;
  String? message;
  List<FeedCList> data = [];

  FeedCommentList({this.success, this.message, required this.data});

  FeedCommentList.fromJson(Map<String, dynamic> json) {
    if (json["success"] is bool) {
      success = json["success"];
    }
    if (json["message"] is String) {
      message = json["message"];
    }
    if (json["data"] is List) {
      data = (json["data"] == null
          ? null
          : (json["data"] as List).map((e) => FeedCList.fromJson(e)).toList())!;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["success"] = success;
    data["message"] = message;
    data["data"] = data;
    return data;
  }
}

class FeedCList {
  int? id;
  int? userId;
  int? feedId;
  dynamic catchlogId;
  String? type;
  String? comment;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  CommentUserInfo? commentUserInfo;

  FeedCList.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["user_id"] is int) {
      userId = json["user_id"];
    }
    if (json["feed_id"] is int) {
      feedId = json["feed_id"];
    }
    catchlogId = json["catchlog_id"];
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["comment"] is String) {
      comment = json["comment"];
    }
    deletedAt = json["deleted_at"];
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["comment_user_info"] is Map) {
      commentUserInfo = json["comment_user_info"] == null
          ? null
          : CommentUserInfo.fromJson(json["comment_user_info"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["user_id"] = userId;
    data["feed_id"] = feedId;
    data["catchlog_id"] = catchlogId;
    data["type"] = type;
    data["comment"] = comment;
    data["deleted_at"] = deletedAt;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    if (commentUserInfo != null) {
      data["comment_user_info"] = commentUserInfo?.toJson();
    }
    return data;
  }
}

class CommentUserInfo {
  int? id;
  String? firstname;
  String? lastname;
  dynamic email;
  dynamic emailVerifiedAt;
  String? phoneNumber;
  String? phoneNumberVerifiedAt;
  String? dob;
  String? gender;
  String? profilePic;
  String? description;
  String? otp;
  String? confirmationToken;
  String? authToken;
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

  CommentUserInfo(
      {this.id,
      this.firstname,
      this.lastname,
      this.email,
      this.emailVerifiedAt,
      this.phoneNumber,
      this.phoneNumberVerifiedAt,
      this.dob,
      this.gender,
      this.profilePic,
      this.description,
      this.otp,
      this.confirmationToken,
      this.authToken,
      this.deviceToken,
      this.profileStep,
      this.isVerified,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.cardId,
      this.customerId,
      this.timezone,
      this.roleId,
      this.deletedAt});

  CommentUserInfo.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["firstname"] is String) {
      firstname = json["firstname"];
    }
    if (json["lastname"] is String) {
      lastname = json["lastname"];
    }
    email = json["email"];
    emailVerifiedAt = json["email_verified_at"];
    if (json["phone_number"] is String) {
      phoneNumber = json["phone_number"];
    }
    if (json["phone_number_verified_at"] is String) {
      phoneNumberVerifiedAt = json["phone_number_verified_at"];
    }
    if (json["dob"] is String) {
      dob = json["dob"];
    }
    if (json["gender"] is String) {
      gender = json["gender"];
    }
    if (json["profile_pic"] is String) {
      profilePic = json["profile_pic"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["otp"] is String) {
      otp = json["otp"];
    }
    if (json["confirmation_token"] is String) {
      confirmationToken = json["confirmation_token"];
    }
    if (json["auth_token"] is String) {
      authToken = json["auth_token"];
    }
    deviceToken = json["device_token"];
    if (json["profile_step"] is int) {
      profileStep = json["profile_step"];
    }
    if (json["is_verified"] is int) {
      isVerified = json["is_verified"];
    }
    if (json["is_deleted"] is int) {
      isDeleted = json["is_deleted"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["card_id"] is String) {
      cardId = json["card_id"];
    }
    if (json["customer_id"] is String) {
      customerId = json["customer_id"];
    }
    if (json["timezone"] is String) {
      timezone = json["timezone"];
    }
    if (json["role_id"] is int) {
      roleId = json["role_id"];
    }
    deletedAt = json["deleted_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["firstname"] = firstname;
    data["lastname"] = lastname;
    data["email"] = email;
    data["email_verified_at"] = emailVerifiedAt;
    data["phone_number"] = phoneNumber;
    data["phone_number_verified_at"] = phoneNumberVerifiedAt;
    data["dob"] = dob;
    data["gender"] = gender;
    data["profile_pic"] = profilePic;
    data["description"] = description;
    data["otp"] = otp;
    data["confirmation_token"] = confirmationToken;
    data["auth_token"] = authToken;
    data["device_token"] = deviceToken;
    data["profile_step"] = profileStep;
    data["is_verified"] = isVerified;
    data["is_deleted"] = isDeleted;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    data["card_id"] = cardId;
    data["customer_id"] = customerId;
    data["timezone"] = timezone;
    data["role_id"] = roleId;
    data["deleted_at"] = deletedAt;
    return data;
  }
}
