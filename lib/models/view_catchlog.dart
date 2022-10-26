class ViewCatchlogResponse {
    ViewCatchlogResponse({
        this.success,
        this.message,
       required this.data,
    });

    bool? success;
    String? message;
    List<ViewCatchlogList> data=[];

   ViewCatchlogResponse.fromJson(Map<String, dynamic> json) {
    success: json["success"];
        message: json["message"];
        if (json["data"] is List) {
      data =
          (json["data"] as List).map((e) => ViewCatchlogList.fromJson(e)).toList();
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

class ViewCatchlogList {
    ViewCatchlogList({
        this.id,
        this.location,
        this.lng,
        this.lat,
        this.weight,
        this.length,
        this.eventId,
        this.userId,
        this.type,
        this.pic,
        this.bait,
        this.comment,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.event,
        this.userInfo,
        this.fishtype,
        this.challenge,
        this.isLiked,
        this.totalComments,
        this.totalLikes,
    });

    int? id;
    String? location;
    double? lng;
    double? lat;
    String? weight;
    String? length;
    int? eventId;
    int? userId;
    int? type;
    String? pic;
    String? bait;
    String? comment;
    dynamic deletedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic event;
    UserInfo? userInfo;
    String? fishtype;
    String? challenge;
    bool? isLiked;
    int? totalComments;
    int? totalLikes;

    factory ViewCatchlogList.fromJson(Map<String, dynamic> json) => ViewCatchlogList(
        id: json["id"],
        location: json["location"],
        lng: json["lng"].toDouble(),
        lat: json["lat"].toDouble(),
        weight: json["weight"],
        length: json["length"],
        eventId: json["event_id"],
        userId: json["user_id"],
        type: json["type"],
        pic: json["pic"],
        bait: json["bait"],
        comment: json["comment"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        event: json["event"],
        userInfo: UserInfo.fromJson(json["user_info"]),
        fishtype: json["fishtype"],
        challenge: json["challenge"],
        isLiked: json["is_liked"],
        totalComments: json["total_comments"],
        totalLikes: json["total_likes"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "location": location,
        "lng": lng,
        "lat": lat,
        "weight": weight,
        "length": length,
        "event_id": eventId,
        "user_id": userId,
        "type": type,
        "pic": pic,
        "bait": bait,
        "comment": comment,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "event": event,
        "user_info": userInfo!.toJson(),
        "fishtype": fishtype,
        "challenge": challenge,
        "is_liked": isLiked,
        "total_comments": totalComments,
        "total_likes": totalLikes,
    };
}

class UserInfo {
    UserInfo({
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

    factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
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
