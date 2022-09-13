class CreateEvent {
    CreateEvent({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    Data? data;

    factory CreateEvent.fromJson(Map<String, dynamic> json) => CreateEvent(
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
        this.name,
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
        this.startTime,
        this.endTime,
        this.logo,
        this.banner,
        this.spUserId,
        this.eventType,
        this.updatedAt,
        this.createdAt,
        this.id,
    });

    String? name;
    String? address;
    String? lat;
    String? lng;
    String? teamSizeMin;
    String? teamSizeMax;
    String? about;
    String? species;
    String? anglers;
    String? teams;
    String? weather;
    String? rules;
    String? disclaimer;
    String? startTime;
    String? endTime;
    dynamic logo;
    dynamic banner;
    int? spUserId;
    String? eventType;
    DateTime? updatedAt;
    DateTime? createdAt;
    int? id;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json["name"],
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
        startTime: json["start_time"],
        endTime: json["end_time"],
        logo: json["logo"],
        banner: json["banner"],
        spUserId: json["sp_user_id"],
        eventType: json["event_type"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
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
        "start_time": startTime,
        "end_time": endTime,
        "logo": logo,
        "banner": banner,
        "sp_user_id": spUserId,
        "event_type": eventType,
        "updated_at": updatedAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "id": id,
    };
}
