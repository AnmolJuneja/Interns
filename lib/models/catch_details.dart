class CatchDetailsModel {
  bool? success;
  String? message;
  Data? data;

  CatchDetailsModel({this.success, this.message, this.data});

  CatchDetailsModel.fromJson(Map<String, dynamic> json) {
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
  String? fishtype;
  String? challenge;
  bool? isLiked;
  int? totalComments;
  int? totalLikes;
  UserDetail? userDetail;

  Data(
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
      this.fishtype,
      this.challenge,
      this.isLiked,
      this.totalComments,
      this.totalLikes,
      this.userDetail});

  Data.fromJson(Map<String, dynamic> json) {
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
    if (json["user_detail"] is Map) {
      userDetail = json["user_detail"] == null
          ? null
          : UserDetail.fromJson(json["user_detail"]);
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
    data["fishtype"] = fishtype;
    data["challenge"] = challenge;
    data["is_liked"] = isLiked;
    data["total_comments"] = totalComments;
    data["total_likes"] = totalLikes;
    if (userDetail != null) {
      data["user_detail"] = userDetail?.toJson();
    }
    return data;
  }
}

class UserDetail {
  int? id;
  String? firstname;
  String? lastname;
  String? email;
  String? dob;
  String? gender;
  dynamic profilePic;
  String? phoneNumber;
  dynamic description;
  String? cardId;
  String? customerId;
  String? timezone;
  dynamic authToken;
  int? profileStep;
  int? isVerified;
  dynamic userDetails;
  Address? address;
  int? following;
  int? followers;
  List<dynamic>? wishlist;

  UserDetail(
      {this.id,
      this.firstname,
      this.lastname,
      this.email,
      this.dob,
      this.gender,
      this.profilePic,
      this.phoneNumber,
      this.description,
      this.cardId,
      this.customerId,
      this.timezone,
      this.authToken,
      this.profileStep,
      this.isVerified,
      this.userDetails,
      this.address,
      this.following,
      this.followers,
      this.wishlist});

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
    if (json["dob"] is String) {
      dob = json["dob"];
    }
    if (json["gender"] is String) {
      gender = json["gender"];
    }
    profilePic = json["profile_pic"];
    if (json["phone_number"] is String) {
      phoneNumber = json["phone_number"];
    }
    description = json["description"];
    if (json["card_id"] is String) {
      cardId = json["card_id"];
    }
    if (json["customer_id"] is String) {
      customerId = json["customer_id"];
    }
    if (json["timezone"] is String) {
      timezone = json["timezone"];
    }
    authToken = json["auth_token"];
    if (json["profile_step"] is int) {
      profileStep = json["profile_step"];
    }
    if (json["is_verified"] is int) {
      isVerified = json["is_verified"];
    }
    userDetails = json["user_details"];
    if (json["address"] is Map) {
      address =
          json["address"] == null ? null : Address.fromJson(json["address"]);
    }
    if (json["following"] is int) {
      following = json["following"];
    }
    if (json["followers"] is int) {
      followers = json["followers"];
    }
    if (json["wishlist"] is List) {
      wishlist = json["wishlist"] ?? [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["firstname"] = firstname;
    data["lastname"] = lastname;
    data["email"] = email;
    data["dob"] = dob;
    data["gender"] = gender;
    data["profile_pic"] = profilePic;
    data["phone_number"] = phoneNumber;
    data["description"] = description;
    data["card_id"] = cardId;
    data["customer_id"] = customerId;
    data["timezone"] = timezone;
    data["auth_token"] = authToken;
    data["profile_step"] = profileStep;
    data["is_verified"] = isVerified;
    data["user_details"] = userDetails;
    if (address != null) {
      data["address"] = address?.toJson();
    }
    data["following"] = following;
    data["followers"] = followers;
    if (wishlist != null) {
      data["wishlist"] = wishlist;
    }
    return data;
  }
}

class Address {
  int? id;
  int? userId;
  String? address;
  String? city;
  String? state;
  String? country;
  int? postalCode;
  double? lat;
  double? lng;
  int? isDeleted;
  int? isDefault;
  String? createdAt;
  String? updatedAt;

  Address(
      {this.id,
      this.userId,
      this.address,
      this.city,
      this.state,
      this.country,
      this.postalCode,
      this.lat,
      this.lng,
      this.isDeleted,
      this.isDefault,
      this.createdAt,
      this.updatedAt});

  Address.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["user_id"] is int) {
      userId = json["user_id"];
    }
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["city"] is String) {
      city = json["city"];
    }
    if (json["state"] is String) {
      state = json["state"];
    }
    if (json["country"] is String) {
      country = json["country"];
    }
    if (json["postal_code"] is int) {
      postalCode = json["postal_code"];
    }
    if (json["lat"] is double) {
      lat = json["lat"];
    }
    if (json["lng"] is double) {
      lng = json["lng"];
    }
    if (json["is_deleted"] is int) {
      isDeleted = json["is_deleted"];
    }
    if (json["is_default"] is int) {
      isDefault = json["is_default"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["user_id"] = userId;
    data["address"] = address;
    data["city"] = city;
    data["state"] = state;
    data["country"] = country;
    data["postal_code"] = postalCode;
    data["lat"] = lat;
    data["lng"] = lng;
    data["is_deleted"] = isDeleted;
    data["is_default"] = isDefault;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    return data;
  }
}

class Event {
  int? id;
  String? name;
  dynamic eventType;
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
    eventType = json["event_type"];
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
