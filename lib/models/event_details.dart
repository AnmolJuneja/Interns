class EventDetails {
    EventDetails({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    Data? data;

    factory EventDetails.fromJson(Map<String, dynamic> json) => EventDetails(
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
        this.isWishlisted,
        this.crew,
        this.schedules,
        this.eventFishSpecies,
    });

    int? id;
    String? name;
    int? eventType;
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
    dynamic logo;
    dynamic banner;
    int? isDeleted;
    int? isActive;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? startTime;
    int? endTime;
    int? isWishlisted;
    dynamic crew;
    List<Schedule>? schedules ;
    List<EventFishSpecy>? eventFishSpecies;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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
        isWishlisted: json["is_wishlisted"],
        crew: json["crew"],
        schedules: List<Schedule>.from(json["schedules"].map((x) => Schedule.fromJson(x))),
        eventFishSpecies: List<EventFishSpecy>.from(json["event_fish_species"].map((x) => EventFishSpecy.fromJson(x))),
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
        "is_wishlisted": isWishlisted,
        "crew": crew,
        "schedules": List<dynamic>.from(schedules!.map((x) => x.toJson())),
        "event_fish_species": List<dynamic>.from(eventFishSpecies!.map((x) => x.toJson())),
    };
}

class EventFishSpecy {
    EventFishSpecy({
        this.id,
        this.eventId,
        this.fishId,
        this.createdAt,
        this.updatedAt,
        this.fishSpecies,
    });

    int? id;
    int? eventId;
    int? fishId;
    DateTime? createdAt;
    DateTime? updatedAt;
    FishSpecies? fishSpecies;

    factory EventFishSpecy.fromJson(Map<String, dynamic> json) => EventFishSpecy(
        id: json["id"],
        eventId: json["event_id"],
        fishId: json["fish_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        fishSpecies: FishSpecies.fromJson(json["fish_species"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "event_id": eventId,
        "fish_id": fishId,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "fish_species": fishSpecies!.toJson(),
    };
}

class FishSpecies {
    FishSpecies({
        this.id,
        this.name,
        this.picture,
        this.description,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
    });

    int? id;
    String? name;
    dynamic picture;
    dynamic description;
    dynamic deletedAt;
    DateTime? createdAt;
    dynamic updatedAt;

    factory FishSpecies.fromJson(Map<String, dynamic> json) => FishSpecies(
        id: json["id"],
        name: json["name"],
        picture: json["picture"],
        description: json["description"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "picture": picture,
        "description": description,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt,
    };
}

class Schedule {
    Schedule({
        this.id,
        this.eventId,
        this.activityText,
        this.activityDate,
        this.isDeleted,
        this.isActive,
        this.createdAt,
        this.updatedAt,
    });

    int? id;
    int? eventId;
    String? activityText;
    DateTime? activityDate;
    int? isDeleted;
    int? isActive;
    DateTime? createdAt;
    DateTime? updatedAt;

    factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        id: json["id"],
        eventId: json["event_id"],
        activityText: json["activity_text"],
        activityDate: DateTime.parse(json["activity_date"]),
        isDeleted: json["is_deleted"],
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "event_id": eventId,
        "activity_text": activityText,
        "activity_date": activityDate!.toIso8601String(),
        "is_deleted": isDeleted,
        "is_active": isActive,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
    };
}
