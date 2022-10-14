class CatchDetailsModel {
    CatchDetailsModel({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    Data? data;

    factory CatchDetailsModel.fromJson(Map<String, dynamic> json) => CatchDetailsModel(
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
        this.fishtype,
        this.challenge,
        this.isLiked,
        this.totalComments,
        this.totalLikes,
        this.userDetail,
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
    Event? event;
    String? fishtype;
    String? challenge;
    bool? isLiked;
    int? totalComments;
    int? totalLikes;
    UserDetail? userDetail;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
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
        event: Event.fromJson(json["event"]),
        fishtype: json["fishtype"],
        challenge: json["challenge"],
        isLiked: json["is_liked"],
        totalComments: json["total_comments"],
        totalLikes: json["total_likes"],
        userDetail: UserDetail.fromJson(json["user_detail"]),
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
        "event": event!.toJson(),
        "fishtype": fishtype,
        "challenge": challenge,
        "is_liked": isLiked,
        "total_comments": totalComments,
        "total_likes": totalLikes,
        "user_detail": userDetail!.toJson(),
    };
}

class Event {
    Event({
        this.id,
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
    });

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
    DateTime? createdAt;
    DateTime? updatedAt;
    int? startTime;
    int? endTime;

    factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["id"],
        name: json["name"],
        eventType: json["event_type"],
        address: json["address"],
        lat: json["lat"],
        lng: json["lng"],
        teamSizeMin: json["team_size_min"],
        teamSizeMax: json["team_size_max"],
        about: json["about"],
        species: json["species"],
        anglers: json["anglers"],
        teams: json["teams"],
        weather: json["weather"],
        rules: json["rules"],
        disclaimer: json["disclaimer"],
        spUserId: json["sp_user_id"],
        logo: json["logo"],
        banner: json["banner"],
        isDeleted: json["is_deleted"],
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        startTime: json["start_time"],
        endTime: json["end_time"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "event_type": eventType,
        "address": address,
        "lat": lat,
        "lng": lng,
        "team_size_min": teamSizeMin,
        "team_size_max": teamSizeMax,
        "about": about,
        "species": species,
        "anglers": anglers,
        "teams": teams,
        "weather": weather,
        "rules": rules,
        "disclaimer": disclaimer,
        "sp_user_id": spUserId,
        "logo": logo,
        "banner": banner,
        "is_deleted": isDeleted,
        "is_active": isActive,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "start_time": startTime,
        "end_time": endTime,
    };
}

class UserDetail {
    UserDetail({
        this.id,
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
        this.wishlist,
    });

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

    factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        dob: json["dob"],
        gender: json["gender"],
        profilePic: json["profile_pic"],
        phoneNumber: json["phone_number"],
        description: json["description"],
        cardId: json["card_id"],
        customerId: json["customer_id"],
        timezone: json["timezone"],
        authToken: json["auth_token"],
        profileStep: json["profile_step"],
        isVerified: json["is_verified"],
        userDetails: json["user_details"],
        address: Address.fromJson(json["address"]),
        following: json["following"],
        followers: json["followers"],
        wishlist: List<dynamic>.from(json["wishlist"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "dob": dob,
        "gender": gender,
        "profile_pic": profilePic,
        "phone_number": phoneNumber,
        "description": description,
        "card_id": cardId,
        "customer_id": customerId,
        "timezone": timezone,
        "auth_token": authToken,
        "profile_step": profileStep,
        "is_verified": isVerified,
        "user_details": userDetails,
        "address": address!.toJson(),
        "following": following,
        "followers": followers,
        "wishlist": List<dynamic>.from(wishlist!.map((x) => x)),
    };
}

class Address {
    Address({
        this.id,
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
        this.updatedAt,
    });

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
    DateTime? createdAt;
    DateTime? updatedAt;

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        id: json["id"],
        userId: json["user_id"],
        address: json["address"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        postalCode: json["postal_code"],
        lat: json["lat"].toDouble(),
        lng: json["lng"].toDouble(),
        isDeleted: json["is_deleted"],
        isDefault: json["is_default"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "address": address,
        "city": city,
        "state": state,
        "country": country,
        "postal_code": postalCode,
        "lat": lat,
        "lng": lng,
        "is_deleted": isDeleted,
        "is_default": isDefault,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
    };
}
