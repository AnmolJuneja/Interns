class FeedListResponse {
    FeedListResponse({
       required this.data,
        this.total,
    });

    List<FeedList> data=[];
    int? total;

    factory FeedListResponse.fromJson(Map<String, dynamic> json) => FeedListResponse(
       
        data: List<FeedList>.from(json["data"].map((x) => FeedList.fromJson(x))),
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "total": total,
    };
}

class FeedList {
    FeedList({
        this.id,
        this.userId,
        this.location,
        this.lng,
        this.lat,
        this.description,
        this.viewStatus,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.feedUserInfo,
        this.getFeedIamges,
    });

    int? id;
    int? userId;
    String? location;
    double? lng;
    double? lat;
    String? description;
    int? viewStatus;
    dynamic deletedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    FeedUserInfo? feedUserInfo;
    List<GetFeedIamge>? getFeedIamges;

    factory FeedList.fromJson(Map<String, dynamic> json) => FeedList(
        id: json["id"],
        userId: json["user_id"],
        location: json["location"],
        lng: json["lng"].toDouble(),
        lat: json["lat"].toDouble(),
        description: json["description"],
        viewStatus: json["view_status"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        feedUserInfo: FeedUserInfo.fromJson(json["feed_user_info"]),
        getFeedIamges: List<GetFeedIamge>.from(json["get_feed_iamges"].map((x) => GetFeedIamge.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "location": location,
        "lng": lng,
        "lat": lat,
        "description": description,
        "view_status": viewStatus,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "feed_user_info": feedUserInfo!.toJson(),
        "get_feed_iamges": List<dynamic>.from(getFeedIamges!.map((x) => x.toJson())),
    };
}

class FeedUserInfo {
    FeedUserInfo({
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
    String? firstname;
    String? lastname;
    String? email;
    dynamic emailVerifiedAt;
    String? phoneNumber;
    DateTime? phoneNumberVerifiedAt;
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
    DateTime? createdAt;
    DateTime? updatedAt;
    String? cardId;
    String? customerId;
    String? timezone;

    factory FeedUserInfo.fromJson(Map<String, dynamic> json) => FeedUserInfo(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        phoneNumber: json["phone_number"],
        phoneNumberVerifiedAt: DateTime.parse(json["phone_number_verified_at"]),
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
        "phone_number_verified_at": phoneNumberVerifiedAt!.toIso8601String(),
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

class GetFeedIamge {
    GetFeedIamge({
        this.id,
        this.feedId,
        this.pic,
        this.createdAt,
        this.updatedAt,
    });

    int? id;
    int? feedId;
    String? pic;
    DateTime? createdAt;
    DateTime? updatedAt;

    factory GetFeedIamge.fromJson(Map<String, dynamic> json) => GetFeedIamge(
        id: json["id"],
        feedId: json["feed_id"],
        pic: json["pic"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "feed_id": feedId,
        "pic": pic,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
    };
}

class Link {
    Link({
        this.url,
        this.label,
        this.active,
    });

    String? url;
    String? label;
    bool? active;

    factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"],
        active: json["active"],
    );

    Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label,
        "active": active,
    };
}
