class UserCatchListResponse {
  bool? success;
  String? message;
  List<CatchData> data = [];

  UserCatchListResponse({this.success, this.message, required this.data});

  UserCatchListResponse.fromJson(Map<String, dynamic> json) {
    if (json["success"] is bool) {
      success = json["success"];
    }
    if (json["message"] is String) {
      message = json["message"];
    }
    if (json["data"] is List) {
      data = (json["data"] == null
          ? null
          : (json["data"] as List).map((e) => CatchData.fromJson(e)).toList())!;
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

class CatchData {
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
  String? createdAt;
  String? updatedAt;
  Event? event;
  UserDetail? userDetail;
  String? fishtype;
  String? challenge;
  bool? isLiked;
  int? totalComments;
  int? totalLikes;

  CatchData(
      {this.id,
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
      this.userDetail,
      this.fishtype,
      this.challenge,
      this.isLiked,
      this.totalComments,
      this.totalLikes});

  CatchData.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
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
    if (json["weight"] is String) {
      weight = json["weight"];
    }
    if (json["length"] is String) {
      length = json["length"];
    }
    if (json["event_id"] is int) {
      eventId = json["event_id"];
    }
    if (json["user_id"] is int) {
      userId = json["user_id"];
    }
    if (json["type"] is int) {
      type = json["type"];
    }
    if (json["pic"] is String) {
      pic = json["pic"];
    }
    if (json["bait"] is String) {
      bait = json["bait"];
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
    if (json["event"] is Map) {
      event = json["event"] == null ? null : Event.fromJson(json["event"]);
    }
    if (json["user_detail"] is Map) {
      userDetail = json["user_detail"] == null
          ? null
          : UserDetail.fromJson(json["user_detail"]);
    }
    if (json["fishtype"] is String) {
      fishtype = json["fishtype"];
    }
    if (json["challenge"] is String) {
      challenge = json["challenge"];
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
    data["location"] = location;
    data["lng"] = lng;
    data["lat"] = lat;
    data["weight"] = weight;
    data["length"] = length;
    data["event_id"] = eventId;
    data["user_id"] = userId;
    data["type"] = type;
    data["pic"] = pic;
    data["bait"] = bait;
    data["comment"] = comment;
    data["deleted_at"] = deletedAt;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    if (event != null) {
      data["event"] = event?.toJson();
    }
    if (userDetail != null) {
      data["user_detail"] = userDetail?.toJson();
    }
    data["fishtype"] = fishtype;
    data["challenge"] = challenge;
    data["is_liked"] = isLiked;
    data["total_comments"] = totalComments;
    data["total_likes"] = totalLikes;
    return data;
  }
}

class UserDetail {
  int? id;
  String? firstname;
  String? lastname;
  String? email;
  String? emailVerifiedAt;
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
  dynamic cardId;
  String? customerId;
  dynamic timezone;
  int? roleId;
  dynamic deletedAt;

  UserDetail(
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

  UserDetail.fromJson(Map<String, dynamic> json) {
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
    cardId = json["card_id"];
    if (json["customer_id"] is String) {
      customerId = json["customer_id"];
    }
    timezone = json["timezone"];
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

class Event {
  int? id;
  String? name;
  int? fee;
  int? eventType;
  String? address;
  String? lat;
  String? lng;
  int? teamSizeMin;
  int? teamSizeMax;
  String? about;
  int? species;
  int? anglers;
  int? teams;
  String? weather;
  String? rules;
  String? disclaimer;
  int? spUserId;
  String? logo;
  String? banner;
  int? isDeleted;
  int? isActive;
  String? createdAt;
  String? updatedAt;
  int? startTime;
  int? endTime;
  dynamic deletedAt;

  Event(
      {this.id,
      this.name,
      this.fee,
      this.eventType,
      this.address,
      this.lat,
      this.lng,
      this.teamSizeMin,
      this.teamSizeMax,
      this.about,
      this.species,
      this.anglers,
      this.teams,
      this.weather,
      this.rules,
      this.disclaimer,
      this.spUserId,
      this.logo,
      this.banner,
      this.isDeleted,
      this.isActive,
      this.createdAt,
      this.updatedAt,
      this.startTime,
      this.endTime,
      this.deletedAt});

  Event.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["fee"] is int) {
      fee = json["fee"];
    }
    if (json["event_type"] is int) {
      eventType = json["event_type"];
    }
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["lat"] is String) {
      lat = json["lat"];
    }
    if (json["lng"] is String) {
      lng = json["lng"];
    }
    if (json["team_size_min"] is int) {
      teamSizeMin = json["team_size_min"];
    }
    if (json["team_size_max"] is int) {
      teamSizeMax = json["team_size_max"];
    }
    if (json["about"] is String) {
      about = json["about"];
    }
    if (json["species"] is int) {
      species = json["species"];
    }
    if (json["anglers"] is int) {
      anglers = json["anglers"];
    }
    if (json["teams"] is int) {
      teams = json["teams"];
    }
    if (json["weather"] is String) {
      weather = json["weather"];
    }
    if (json["rules"] is String) {
      rules = json["rules"];
    }
    if (json["disclaimer"] is String) {
      disclaimer = json["disclaimer"];
    }
    if (json["sp_user_id"] is int) {
      spUserId = json["sp_user_id"];
    }
    if (json["logo"] is String) {
      logo = json["logo"];
    }
    if (json["banner"] is String) {
      banner = json["banner"];
    }
    if (json["is_deleted"] is int) {
      isDeleted = json["is_deleted"];
    }
    if (json["is_active"] is int) {
      isActive = json["is_active"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["start_time"] is int) {
      startTime = json["start_time"];
    }
    if (json["end_time"] is int) {
      endTime = json["end_time"];
    }
    deletedAt = json["deleted_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["fee"] = fee;
    data["event_type"] = eventType;
    data["address"] = address;
    data["lat"] = lat;
    data["lng"] = lng;
    data["team_size_min"] = teamSizeMin;
    data["team_size_max"] = teamSizeMax;
    data["about"] = about;
    data["species"] = species;
    data["anglers"] = anglers;
    data["teams"] = teams;
    data["weather"] = weather;
    data["rules"] = rules;
    data["disclaimer"] = disclaimer;
    data["sp_user_id"] = spUserId;
    data["logo"] = logo;
    data["banner"] = banner;
    data["is_deleted"] = isDeleted;
    data["is_active"] = isActive;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    data["start_time"] = startTime;
    data["end_time"] = endTime;
    data["deleted_at"] = deletedAt;
    return data;
  }
}
