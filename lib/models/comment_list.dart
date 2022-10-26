class CommentListRespone {
    CommentListRespone({
        this.success,
        this.message,
        required this.data,
    });

    bool? success;
    String? message;
    List<CommentList> data =[];
    
     CommentListRespone.fromJson(Map<String, dynamic> json) {
    success: json["success"];
        message: json["message"];
        if (json["data"] is List) {
      data =
          (json["data"] as List).map((e) => CommentList.fromJson(e)).toList();
    }
   }
   Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    data['data'] = this.data.map((v) => v.toJson()).toList();
    return data;
  }

   
}

class CommentList {
    CommentList({
        this.id,
        this.userId,
        this.feedId,
        this.catchlogId,
        this.type,
        this.comment,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.commentUserInfo,
    });

    int? id;
    int? userId;
    dynamic feedId;
    int? catchlogId;
    String? type;
    String? comment;
    dynamic deletedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    CommentUserInfo? commentUserInfo;

    factory CommentList.fromJson(Map<String, dynamic> json) => CommentList(
        id: json["id"],
        userId: json["user_id"],
        feedId: json["feed_id"],
        catchlogId: json["catchlog_id"],
        type: json["type"],
        comment: json["comment"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        commentUserInfo: CommentUserInfo.fromJson(json["comment_user_info"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "feed_id": feedId,
        "catchlog_id": catchlogId,
        "type": type,
        "comment": comment,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "comment_user_info": commentUserInfo!.toJson(),
    };
}

class CommentUserInfo {
    CommentUserInfo({
        this.id,
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
    });

    int? id;
    dynamic firstname;
    dynamic lastname;
    dynamic email;
    dynamic emailVerifiedAt;
    String? phoneNumber;
    dynamic phoneNumberVerifiedAt;
    dynamic dob;
    dynamic gender;
    dynamic profilePic;
    dynamic description;
    String? otp;
    String? confirmationToken;
    dynamic authToken;
    dynamic deviceToken;
    int? profileStep;
    int? isVerified;
    int? isDeleted;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic cardId;
    dynamic customerId;
    dynamic timezone;

    factory CommentUserInfo.fromJson(Map<String, dynamic> json) => CommentUserInfo(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        phoneNumber: json["phone_number"],
        phoneNumberVerifiedAt: json["phone_number_verified_at"],
        dob: json["dob"],
        gender: json["gender"],
        profilePic: json["profile_pic"],
        description: json["description"],
        otp: json["otp"],
        confirmationToken: json["confirmation_token"],
        authToken: json["auth_token"],
        deviceToken: json["device_token"],
        profileStep: json["profile_step"],
        isVerified: json["is_verified"],
        isDeleted: json["is_deleted"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        cardId: json["card_id"],
        customerId: json["customer_id"],
        timezone: json["timezone"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "phone_number": phoneNumber,
        "phone_number_verified_at": phoneNumberVerifiedAt,
        "dob": dob,
        "gender": gender,
        "profile_pic": profilePic,
        "description": description,
        "otp": otp,
        "confirmation_token": confirmationToken,
        "auth_token": authToken,
        "device_token": deviceToken,
        "profile_step": profileStep,
        "is_verified": isVerified,
        "is_deleted": isDeleted,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "card_id": cardId,
        "customer_id": customerId,
        "timezone": timezone,
    };
}
