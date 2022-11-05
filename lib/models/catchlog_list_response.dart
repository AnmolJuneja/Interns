
class CatchlogListResponse {
  bool? success;
  String? message;
  List<CatchlogList> data = [];

  CatchlogListResponse({this.success, this.message, required this.data});

  CatchlogListResponse.fromJson(Map<String, dynamic> json) {
    if(json["success"] is bool) {
      success = json["success"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is List) {
      data = (json["data"] == null ? null : (json["data"] as List).map((e) => CatchlogList.fromJson(e)).toList())!;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class CatchlogList {
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
  dynamic event;
  String? fishtype;
  String? challenge;
  bool? isLiked;
  int? totalComments;
  int? totalLikes;
  UserDetail? userDetail;

  CatchlogList({this.id, this.location, this.lng, this.lat, this.weight, this.length, this.eventId, this.userId, this.type, this.pic, this.bait, this.comment, this.deletedAt, this.createdAt, this.updatedAt, this.event, this.fishtype, this.challenge, this.isLiked, this.totalComments, this.totalLikes, this.userDetail});

  CatchlogList.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["location"] is String) {
      location = json["location"];
    }
    if(json["lng"] is double) {
      lng = json["lng"];
    }
    if(json["lat"] is double) {
      lat = json["lat"];
    }
    if(json["weight"] is String) {
      weight = json["weight"];
    }
    if(json["length"] is String) {
      length = json["length"];
    }
    if(json["event_id"] is int) {
      eventId = json["event_id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["type"] is int) {
      type = json["type"];
    }
    if(json["pic"] is String) {
      pic = json["pic"];
    }
    if(json["bait"] is String) {
      bait = json["bait"];
    }
    if(json["comment"] is String) {
      comment = json["comment"];
    }
    deletedAt = json["deleted_at"];
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    event = json["event"];
    if(json["fishtype"] is String) {
      fishtype = json["fishtype"];
    }
    if(json["challenge"] is String) {
      challenge = json["challenge"];
    }
    if(json["is_liked"] is bool) {
      isLiked = json["is_liked"];
    }
    if(json["total_comments"] is int) {
      totalComments = json["total_comments"];
    }
    if(json["total_likes"] is int) {
      totalLikes = json["total_likes"];
    }
    if(json["user_detail"] is Map) {
      userDetail = json["user_detail"] == null ? null : UserDetail.fromJson(json["user_detail"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["location"] = location;
    _data["lng"] = lng;
    _data["lat"] = lat;
    _data["weight"] = weight;
    _data["length"] = length;
    _data["event_id"] = eventId;
    _data["user_id"] = userId;
    _data["type"] = type;
    _data["pic"] = pic;
    _data["bait"] = bait;
    _data["comment"] = comment;
    _data["deleted_at"] = deletedAt;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["event"] = event;
    _data["fishtype"] = fishtype;
    _data["challenge"] = challenge;
    _data["is_liked"] = isLiked;
    _data["total_comments"] = totalComments;
    _data["total_likes"] = totalLikes;
    if(userDetail != null) {
      _data["user_detail"] = userDetail?.toJson();
    }
    return _data;
  }
}

class UserDetail {
  int? id;
  String? firstname;
  String? lastname;
  String? email;
  String? dob;
  String? gender;
  String? profilePic;
  String? phoneNumber;
  String? description;
  String? cardId;
  String? customerId;
  String? timezone;
  dynamic authToken;
  int? profileStep;
  int? isVerified;
  UserDetails? userDetails;
  Address? address;
  int? following;
  int? followers;
  List<dynamic>? wishlist;

  UserDetail({this.id, this.firstname, this.lastname, this.email, this.dob, this.gender, this.profilePic, this.phoneNumber, this.description, this.cardId, this.customerId, this.timezone, this.authToken, this.profileStep, this.isVerified, this.userDetails, this.address, this.following, this.followers, this.wishlist});

  UserDetail.fromJson(Map<String, dynamic> json) {
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
    if(json["dob"] is String) {
      dob = json["dob"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["profile_pic"] is String) {
      profilePic = json["profile_pic"];
    }
    if(json["phone_number"] is String) {
      phoneNumber = json["phone_number"];
    }
    if(json["description"] is String) {
      description = json["description"];
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
    authToken = json["auth_token"];
    if(json["profile_step"] is int) {
      profileStep = json["profile_step"];
    }
    if(json["is_verified"] is int) {
      isVerified = json["is_verified"];
    }
    if(json["user_details"] is Map) {
      userDetails = json["user_details"] == null ? null : UserDetails.fromJson(json["user_details"]);
    }
    if(json["address"] is Map) {
      address = json["address"] == null ? null : Address.fromJson(json["address"]);
    }
    if(json["following"] is int) {
      following = json["following"];
    }
    if(json["followers"] is int) {
      followers = json["followers"];
    }
    if(json["wishlist"] is List) {
      wishlist = json["wishlist"] ?? [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["firstname"] = firstname;
    _data["lastname"] = lastname;
    _data["email"] = email;
    _data["dob"] = dob;
    _data["gender"] = gender;
    _data["profile_pic"] = profilePic;
    _data["phone_number"] = phoneNumber;
    _data["description"] = description;
    _data["card_id"] = cardId;
    _data["customer_id"] = customerId;
    _data["timezone"] = timezone;
    _data["auth_token"] = authToken;
    _data["profile_step"] = profileStep;
    _data["is_verified"] = isVerified;
    if(userDetails != null) {
      _data["user_details"] = userDetails?.toJson();
    }
    if(address != null) {
      _data["address"] = address?.toJson();
    }
    _data["following"] = following;
    _data["followers"] = followers;
    if(wishlist != null) {
      _data["wishlist"] = wishlist;
    }
    return _data;
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

  Address({this.id, this.userId, this.address, this.city, this.state, this.country, this.postalCode, this.lat, this.lng, this.isDeleted, this.isDefault, this.createdAt, this.updatedAt});

  Address.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["city"] is String) {
      city = json["city"];
    }
    if(json["state"] is String) {
      state = json["state"];
    }
    if(json["country"] is String) {
      country = json["country"];
    }
    if(json["postal_code"] is int) {
      postalCode = json["postal_code"];
    }
    if(json["lat"] is double) {
      lat = json["lat"];
    }
    if(json["lng"] is double) {
      lng = json["lng"];
    }
    if(json["is_deleted"] is int) {
      isDeleted = json["is_deleted"];
    }
    if(json["is_default"] is int) {
      isDefault = json["is_default"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_id"] = userId;
    _data["address"] = address;
    _data["city"] = city;
    _data["state"] = state;
    _data["country"] = country;
    _data["postal_code"] = postalCode;
    _data["lat"] = lat;
    _data["lng"] = lng;
    _data["is_deleted"] = isDeleted;
    _data["is_default"] = isDefault;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}

class UserDetails {
  int? id;
  int? userId;
  String? fishingType;
  String? shirtSize;
  String? isVeteran;
  String? club;
  String? createdAt;
  String? updatedAt;

  UserDetails({this.id, this.userId, this.fishingType, this.shirtSize, this.isVeteran, this.club, this.createdAt, this.updatedAt});

  UserDetails.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["fishing_type"] is String) {
      fishingType = json["fishing_type"];
    }
    if(json["shirt_size"] is String) {
      shirtSize = json["shirt_size"];
    }
    if(json["is_veteran"] is String) {
      isVeteran = json["is_veteran"];
    }
    if(json["club"] is String) {
      club = json["club"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_id"] = userId;
    _data["fishing_type"] = fishingType;
    _data["shirt_size"] = shirtSize;
    _data["is_veteran"] = isVeteran;
    _data["club"] = club;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}