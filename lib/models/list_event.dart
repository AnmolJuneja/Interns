class ListEvent {
  ListEvent({
    this.success,
    this.message,
    this.data,
    this.totalRecords,
  });

  bool? success;
  String? message;
  List<Datum>? data;
  int? totalRecords;

  factory ListEvent.fromJson(Map<String, dynamic> json) => ListEvent(
        success: json["success"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        totalRecords: json["totalRecords"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "totalRecords": totalRecords,
      };
}

class Datum {
  Datum({
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
    this.distance,
    this.isWishlisted,
    this.crew,
    this.schedules,
    this.eventFishSpecies,
  });

  int? id;
  Name? name;
  int? eventType;
  Address? address;
  String? lat;
  String? lng;
  int? teamSizeMin;
  int? teamSizeMax;
  About? about;
  int? species;
  int? anglers;
  Weather? weather;
  Rules? rules;
  Disclaimer? disclaimer;
  int? spUserId;
  dynamic logo;
  dynamic banner;
  int? isDeleted;
  int? isActive;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? startTime;
  int? endTime;
  double? distance;
  int? isWishlisted;
  dynamic crew;
  List<Schedule>? schedules;
  List<EventFishSpecy>? eventFishSpecies;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: nameValues.map[json["name"]],
        eventType: json["event_type"] == null ? null : json["event_type"],
        address: addressValues.map[json["address"]],
        lat: json["lat"],
        lng: json["lng"],
        teamSizeMin: json["team_size_min"],
        teamSizeMax: json["team_size_max"],
        about: aboutValues.map[json["about"]],
        species: json["species"],
        anglers: json["anglers"],
        weather: weatherValues.map[json["weather"]],
        rules: rulesValues.map[json["rules"]],
        disclaimer: disclaimerValues.map[json["disclaimer"]],
        spUserId: json["sp_user_id"],
        logo: json["logo"],
        banner: json["banner"],
        isDeleted: json["is_deleted"],
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        startTime: json["start_time"],
        endTime: json["end_time"],
        distance: json["distance"].toDouble(),
        isWishlisted: json["is_wishlisted"],
        crew: json["crew"],
        schedules: List<Schedule>.from(
            json["schedules"].map((x) => Schedule.fromJson(x))),
        eventFishSpecies: List<EventFishSpecy>.from(
            json["event_fish_species"].map((x) => EventFishSpecy.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "event_type": eventType == null ? null : eventType,
        "address": addressValues.reverse[address],
        "lat": lat,
        "lng": lng,
        "team_size_min": teamSizeMin,
        "team_size_max": teamSizeMax,
        "about": aboutValues.reverse[about],
        "species": species,
        "anglers": anglers,
        "weather": weatherValues.reverse[weather],
        "rules": rulesValues.reverse[rules],
        "disclaimer": disclaimerValues.reverse[disclaimer],
        "sp_user_id": spUserId,
        "logo": logo,
        "banner": banner,
        "is_deleted": isDeleted,
        "is_active": isActive,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "start_time": startTime,
        "end_time": endTime,
        "distance": distance,
        "is_wishlisted": isWishlisted,
        "crew": crew,
        "schedules": List<dynamic>.from(schedules!.map((x) => x.toJson())),
        "event_fish_species":
            List<dynamic>.from(eventFishSpecies!.map((x) => x.toJson())),
      };
}

enum About { THIS_IS_TEST_EVENT }

final aboutValues =
    EnumValues({"This is test event": About.THIS_IS_TEST_EVENT});

enum Address { DSFSDFSF }

final addressValues = EnumValues({"dsfsdfsf": Address.DSFSDFSF});

enum Disclaimer { DISCLAMER_TEXT_HERE_UPDATED }

final disclaimerValues = EnumValues(
    {"Disclamer text here updated": Disclaimer.DISCLAMER_TEXT_HERE_UPDATED});

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

enum Name { TEST_UPCOMING_EVENTS, TEST_UPCOMING_EVENTS_ABC }

final nameValues = EnumValues({
  "Test Upcoming Events": Name.TEST_UPCOMING_EVENTS,
  "Test Upcoming Events abc": Name.TEST_UPCOMING_EVENTS_ABC
});

enum Rules { THIS_IS_TEST_RULES_UPDATED }

final rulesValues = EnumValues(
    {"This is test Rules updated": Rules.THIS_IS_TEST_RULES_UPDATED});

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
  ActivityText? activityText;
  DateTime? activityDate;
  int? isDeleted;
  int? isActive;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        id: json["id"],
        eventId: json["event_id"],
        activityText: activityTextValues.map[json["activity_text"]],
        activityDate: DateTime.parse(json["activity_date"]),
        isDeleted: json["is_deleted"],
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "event_id": eventId,
        "activity_text": activityTextValues.reverse[activityText],
        "activity_date": activityDate!.toIso8601String(),
        "is_deleted": isDeleted,
        "is_active": isActive,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}

enum ActivityText {
  LEAVE_THE_DOC,
  VIRTUAL_WEIGHT_IN_CHECK_IN,
  TOURNAMENT_CONCLUDE,
  DEADLINE_PHOTOS_MUST_BE_UPLOADED
}

final activityTextValues = EnumValues({
  "Deadline - Photos must be uploaded":
      ActivityText.DEADLINE_PHOTOS_MUST_BE_UPLOADED,
  "Leave the doc": ActivityText.LEAVE_THE_DOC,
  "Tournament Conclude": ActivityText.TOURNAMENT_CONCLUDE,
  "Virtual weight-in/Check in": ActivityText.VIRTUAL_WEIGHT_IN_CHECK_IN
});

// ignore: constant_identifier_names
enum Weather { WEATHER_IS_SUNNY }

final weatherValues =
    EnumValues({"Weather is sunny": Weather.WEATHER_IS_SUNNY});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    // ignore: prefer_conditional_assignment
    if (reverseMap == null) {
      // ignore: unnecessary_new
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
