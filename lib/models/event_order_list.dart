class EventOrderListResponse {
    EventOrderListResponse({
        this.success,
        this.message,
        this.data,
        this.totalRecords,
    });

    bool? success;
    String ?message;
    Data? data;
    int? totalRecords;

    factory EventOrderListResponse.fromJson(Map<String, dynamic> json) => EventOrderListResponse(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        totalRecords: json["totalRecords"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data!.toJson(),
        "totalRecords": totalRecords,
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
    String? perPage;
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
        this.eventId,
        this.eventUserId,
        this.userId,
        this.status,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.event,
        this.user,
    });

    int? id;
    int? eventId;
    int? eventUserId;
    int? userId;
    int? status;
    dynamic deletedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    Event? event;
    User? user;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        eventId: json["event_id"],
        eventUserId: json["event_user_id"],
        userId: json["user_id"],
        status: json["status"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        event: Event.fromJson(json["event"]),
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "event_id": eventId,
        "event_user_id": eventUserId,
        "user_id": userId,
        "status": status,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "event": event!.toJson(),
        "user": user!.toJson(),
    };
}

class Event {
    Event({
        this.id,
        this.name,
        this.address,
        this.lat,
        this.lng,
        this.teamSizeMin,
        this.teamSizeMax,
        this.about,
        this.species,
        this.anglers,
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
    String? address;
    String? lat;
    String? lng;
    int? teamSizeMin;
    int? teamSizeMax;
    String? about;
    int? species;
    int? anglers;
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
        address: json["address"],
        lat: json["lat"],
        lng: json["lng"],
        teamSizeMin: json["team_size_min"],
        teamSizeMax: json["team_size_max"],
        about: json["about"],
        species: json["species"],
        anglers: json["anglers"],
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
        "address": address,
        "lat": lat,
        "lng": lng,
        "team_size_min": teamSizeMin,
        "team_size_max": teamSizeMax,
        "about": about,
        "species": species,
        "anglers": anglers,
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

class User {
    User({
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
    DateTime? phoneNumberVerifiedAt;
    dynamic dob;
    dynamic gender;
    dynamic profilePic;
    dynamic description;
    String? otp;
    String? confirmationToken;
    String? authToken;
    dynamic deviceToken;
    int? profileStep;
    int? isVerified;
    int? isDeleted;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic cardId;
    dynamic customerId;
    dynamic timezone;

    factory User.fromJson(Map<String, dynamic> json) => User(
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
