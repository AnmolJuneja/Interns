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
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    _data["message"] = message;
    if (data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
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
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["current_page"] = currentPage;
    if (data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    _data["first_page_url"] = firstPageUrl;
    _data["from"] = from;
    _data["last_page"] = lastPage;
    _data["last_page_url"] = lastPageUrl;
    if (links != null) {
      _data["links"] = links?.map((e) => e.toJson()).toList();
    }
    _data["next_page_url"] = nextPageUrl;
    _data["path"] = path;
    _data["per_page"] = perPage;
    _data["prev_page_url"] = prevPageUrl;
    _data["to"] = to;
    _data["total"] = total;
    return _data;
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
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["label"] = label;
    _data["active"] = active;
    return _data;
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
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_id"] = userId;
    _data["location"] = location;
    _data["lng"] = lng;
    _data["lat"] = lat;
    _data["description"] = description;
    _data["view_status"] = viewStatus;
    _data["deleted_at"] = deletedAt;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    if (feedUserInfo != null) {
      _data["feed_user_info"] = feedUserInfo?.toJson();
    }
    if (getFeedImages != null) {
      _data["get_feed_images"] = getFeedImages?.map((e) => e.toJson()).toList();
    }
    _data["is_liked"] = isLiked;
    _data["total_comments"] = totalComments;
    _data["total_likes"] = totalLikes;
    return _data;
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
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["feed_id"] = feedId;
    _data["pic"] = pic;
    return _data;
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
