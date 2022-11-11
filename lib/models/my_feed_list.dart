class MyFeedList {
  bool? success;
  String? message;
  Data? data;

  MyFeedList({this.success, this.message, this.data});

  MyFeedList.fromJson(Map<String, dynamic> json) {
    if (json["success"] is bool) {
      success = json["success"];
    }
    if (json["message"] is String) {
      message = json["message"];
    }
    if (json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
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

class Data {
  int? currentPage;
  List<MyFeed>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  dynamic nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  Data(
      {this.currentPage,
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
      this.total});

  Data.fromJson(Map<String, dynamic> json) {
    if (json["current_page"] is int) {
      currentPage = json["current_page"];
    }
    if (json["data"] is List) {
      data = json["data"] == null
          ? null
          : (json["data"] as List).map((e) => MyFeed.fromJson(e)).toList();
    }
    if (json["first_page_url"] is String) {
      firstPageUrl = json["first_page_url"];
    }
    if (json["from"] is int) {
      from = json["from"];
    }
    if (json["last_page"] is int) {
      lastPage = json["last_page"];
    }
    if (json["last_page_url"] is String) {
      lastPageUrl = json["last_page_url"];
    }
    if (json["links"] is List) {
      links = json["links"] == null
          ? null
          : (json["links"] as List).map((e) => Links.fromJson(e)).toList();
    }
    nextPageUrl = json["next_page_url"];
    if (json["path"] is String) {
      path = json["path"];
    }
    if (json["per_page"] is int) {
      perPage = json["per_page"];
    }
    prevPageUrl = json["prev_page_url"];
    if (json["to"] is int) {
      to = json["to"];
    }
    if (json["total"] is int) {
      total = json["total"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["current_page"] = currentPage;
    data["data"] = data;
    data["first_page_url"] = firstPageUrl;
    data["from"] = from;
    data["last_page"] = lastPage;
    data["last_page_url"] = lastPageUrl;
    if (links != null) {
      data["links"] = links?.map((e) => e.toJson()).toList();
    }
    data["next_page_url"] = nextPageUrl;
    data["path"] = path;
    data["per_page"] = perPage;
    data["prev_page_url"] = prevPageUrl;
    data["to"] = to;
    data["total"] = total;
    return data;
  }
}

class Links {
  dynamic url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    if (json["label"] is String) {
      label = json["label"];
    }
    if (json["active"] is bool) {
      active = json["active"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["url"] = url;
    data["label"] = label;
    data["active"] = active;
    return data;
  }
}

class MyFeed {
  int? id;
  int? userId;
  String? location;
  double? lng;
  double? lat;
  String? description;
  int? viewStatus;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  FeedUserInfo? feedUserInfo;
  List<GetFeedImages>? getFeedImages;
  bool? isLiked;
  int? totalComments;
  int? totalLikes;

  MyFeed(
      {this.id,
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
      this.totalLikes});

  MyFeed.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["user_id"] is int) {
      userId = json["user_id"];
    }
    if (json["location"] is String) {
      location = json["location"];
    }
    if (json["lng"] is double) {
      lng = json["lng"];
    }
    if (json["lat"] is double) {
      lat = json["lat"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["view_status"] is int) {
      viewStatus = json["view_status"];
    }
    deletedAt = json["deleted_at"];
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["feed_user_info"] is Map) {
      feedUserInfo = json["feed_user_info"] == null
          ? null
          : FeedUserInfo.fromJson(json["feed_user_info"]);
    }
    if (json["get_feed_images"] is List) {
      getFeedImages = json["get_feed_images"] == null
          ? null
          : (json["get_feed_images"] as List)
              .map((e) => GetFeedImages.fromJson(e))
              .toList();
    }
    if (json["is_liked"] is bool) {
      isLiked = json["is_liked"];
    }
    if (json["total_comments"] is int) {
      totalComments = json["total_comments"];
    }
    if (json["total_likes"] is int) {
      totalLikes = json["total_likes"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["user_id"] = userId;
    data["location"] = location;
    data["lng"] = lng;
    data["lat"] = lat;
    data["description"] = description;
    data["view_status"] = viewStatus;
    data["deleted_at"] = deletedAt;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    if (feedUserInfo != null) {
      data["feed_user_info"] = feedUserInfo?.toJson();
    }
    if (getFeedImages != null) {
      data["get_feed_images"] = getFeedImages?.map((e) => e.toJson()).toList();
    }
    data["is_liked"] = isLiked;
    data["total_comments"] = totalComments;
    data["total_likes"] = totalLikes;
    return data;
  }
}

class GetFeedImages {
  int? feedId;
  String? pic;

  GetFeedImages({this.feedId, this.pic});

  GetFeedImages.fromJson(Map<String, dynamic> json) {
    if (json["feed_id"] is int) {
      feedId = json["feed_id"];
    }
    if (json["pic"] is String) {
      pic = json["pic"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["feed_id"] = feedId;
    data["pic"] = pic;
    return data;
  }
}

class FeedUserInfo {
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

  FeedUserInfo(
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

  FeedUserInfo.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["firstname"] is String) {
      firstname = json["firstname"];
    }
    if (json["lastname"] is String) {
      lastname = json["lastname"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["email_verified_at"] is String) {
      emailVerifiedAt = json["email_verified_at"];
    }
    if (json["phone_number"] is String) {
      phoneNumber = json["phone_number"];
    }
    phoneNumberVerifiedAt = json["phone_number_verified_at"];
    if (json["dob"] is String) {
      dob = json["dob"];
    }
    if (json["gender"] is String) {
      gender = json["gender"];
    }
    if (json["profile_pic"] is String) {
      profilePic = json["profile_pic"];
    }
    description = json["description"];
    if (json["otp"] is String) {
      otp = json["otp"];
    }
    if (json["confirmation_token"] is String) {
      confirmationToken = json["confirmation_token"];
    }
    authToken = json["auth_token"];
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
