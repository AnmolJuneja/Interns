class EventListResponse {
  bool? success;
  String? message;
  List<EventList>? data;
  int? totalRecords;

  EventListResponse({this.success, this.message, this.data, this.totalRecords});

  EventListResponse.fromJson(Map<String, dynamic> json) {
    if (json["success"] is bool) {
      success = json["success"];
    }
    if (json["message"] is String) {
      message = json["message"];
    }
    if (json["data"] is List) {
      data = (json["data"] == null
          ? null
          : (json["data"] as List).map((e) => EventList.fromJson(e)).toList())!;
    }
    if (json["totalRecords"] is int) {
      totalRecords = json["totalRecords"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["success"] = success;
    data["message"] = message;
    data["data"] = data;
    data["totalRecords"] = totalRecords;
    return data;
  }
}

class EventList {
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
  dynamic logo;
  dynamic banner;
  int? isDeleted;
  int? isActive;
  String? createdAt;
  String? updatedAt;
  int? startTime;
  int? endTime;
  dynamic deletedAt;
  double? distance;
  int? isWishlisted;
  dynamic crew;
  List<Schedules>? schedules;
  List<dynamic>? eventFishSpecies;

  EventList(
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
      this.deletedAt,
      this.distance,
      this.isWishlisted,
      this.crew,
      this.schedules,
      this.eventFishSpecies});

  EventList.fromJson(Map<String, dynamic> json) {
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
    logo = json["logo"];
    banner = json["banner"];
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
    if (json["distance"] is double) {
      distance = json["distance"];
    }
    if (json["is_wishlisted"] is int) {
      isWishlisted = json["is_wishlisted"];
    }
    crew = json["crew"];
    if (json["schedules"] is List) {
      schedules = json["schedules"] == null
          ? null
          : (json["schedules"] as List)
              .map((e) => Schedules.fromJson(e))
              .toList();
    }
    if (json["event_fish_species"] is List) {
      eventFishSpecies = json["event_fish_species"] ?? [];
    }
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
    data["distance"] = distance;
    data["is_wishlisted"] = isWishlisted;
    data["crew"] = crew;
    if (schedules != null) {
      data["schedules"] = schedules?.map((e) => e.toJson()).toList();
    }
    if (eventFishSpecies != null) {
      data["event_fish_species"] = eventFishSpecies;
    }
    return data;
  }
}

class Schedules {
  int? id;
  int? eventId;
  String? activityText;
  String? activityDate;
  int? isDeleted;
  int? isActive;
  String? createdAt;
  String? updatedAt;

  Schedules(
      {this.id,
      this.eventId,
      this.activityText,
      this.activityDate,
      this.isDeleted,
      this.isActive,
      this.createdAt,
      this.updatedAt});

  Schedules.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["event_id"] is int) {
      eventId = json["event_id"];
    }
    if (json["activity_text"] is String) {
      activityText = json["activity_text"];
    }
    if (json["activity_date"] is String) {
      activityDate = json["activity_date"];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["event_id"] = eventId;
    data["activity_text"] = activityText;
    data["activity_date"] = activityDate;
    data["is_deleted"] = isDeleted;
    data["is_active"] = isActive;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    return data;
  }
}
