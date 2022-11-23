class FeedListResponse {
  FeedListResponse({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  Data? data;

  factory FeedListResponse.fromJson(Map<String, dynamic> json) =>
      FeedListResponse(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data!.toJson(),
      };
}

class Data {
  Data({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link>? links;
  dynamic nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links!.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  Datum({
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
    this.getFeedImages,
    this.isLiked,
    this.totalComments,
    this.totalLikes,
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
  List<GetFeedImage>? getFeedImages;
  bool? isLiked;
  int? totalComments;
  int? totalLikes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
        getFeedImages: List<GetFeedImage>.from(
            json["get_feed_images"].map((x) => GetFeedImage.fromJson(x))),
        isLiked: json["is_liked"],
        totalComments: json["total_comments"],
        totalLikes: json["total_likes"],
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
        "get_feed_images":
            List<dynamic>.from(getFeedImages!.map((x) => x.toJson())),
        "is_liked": isLiked,
        "total_comments": totalComments,
        "total_likes": totalLikes,
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
  DateTime? emailVerifiedAt;
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
        emailVerifiedAt: json["email_verified_at"] == null
            ? null
            : DateTime.parse(json["email_verified_at"]),
        phoneNumber: json["phone_number"],
        phoneNumberVerifiedAt: json["phone_number_verified_at"] == null
            ? null
            : DateTime.parse(json["phone_number_verified_at"]),
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
        "email_verified_at":
            emailVerifiedAt == null ? null : emailVerifiedAt!.toIso8601String(),
        "phone_number": phoneNumber,
        "phone_number_verified_at": phoneNumberVerifiedAt == null
            ? null
            : phoneNumberVerifiedAt!.toIso8601String(),
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

class GetFeedImage {
  GetFeedImage({
    this.feedId,
    this.pic,
  });

  int? feedId;
  String? pic;

  factory GetFeedImage.fromJson(Map<String, dynamic> json) => GetFeedImage(
        feedId: json["feed_id"],
        pic: json["pic"],
      );

  Map<String, dynamic> toJson() => {
        "feed_id": feedId,
        "pic": pic,
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
        url: json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "label": label,
        "active": active,
      };
}
