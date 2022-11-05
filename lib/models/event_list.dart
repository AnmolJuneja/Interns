
class EventListResponse {
  bool? success;
  String? message;
  List<EventList>? data;
  int? totalRecords;

  EventListResponse({this.success, this.message, this.data, this.totalRecords});

  EventListResponse.fromJson(Map<String, dynamic> json) {
    if(json["success"] is bool) {
      success = json["success"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is List) {
      data = (json["data"] == null ? null : (json["data"] as List).map((e) => EventList.fromJson(e)).toList())!;
    }
    if(json["totalRecords"] is int) {
      totalRecords = json["totalRecords"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data!.map((e) => e.toJson()).toList();
    }
    _data["totalRecords"] = totalRecords;
    return _data;
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

  EventList({this.id, this.name, this.fee, this.eventType, this.address, this.lat, this.lng, this.teamSizeMin, this.teamSizeMax, this.about, this.species, this.anglers, this.teams, this.weather, this.rules, this.disclaimer, this.spUserId, this.logo, this.banner, this.isDeleted, this.isActive, this.createdAt, this.updatedAt, this.startTime, this.endTime, this.deletedAt, this.distance, this.isWishlisted, this.crew, this.schedules, this.eventFishSpecies});

  EventList.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["fee"] is int) {
      fee = json["fee"];
    }
    if(json["event_type"] is int) {
      eventType = json["event_type"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["lat"] is String) {
      lat = json["lat"];
    }
    if(json["lng"] is String) {
      lng = json["lng"];
    }
    if(json["team_size_min"] is int) {
      teamSizeMin = json["team_size_min"];
    }
    if(json["team_size_max"] is int) {
      teamSizeMax = json["team_size_max"];
    }
    if(json["about"] is String) {
      about = json["about"];
    }
    if(json["species"] is int) {
      species = json["species"];
    }
    if(json["anglers"] is int) {
      anglers = json["anglers"];
    }
    if(json["teams"] is int) {
      teams = json["teams"];
    }
    if(json["weather"] is String) {
      weather = json["weather"];
    }
    if(json["rules"] is String) {
      rules = json["rules"];
    }
    if(json["disclaimer"] is String) {
      disclaimer = json["disclaimer"];
    }
    if(json["sp_user_id"] is int) {
      spUserId = json["sp_user_id"];
    }
    logo = json["logo"];
    banner = json["banner"];
    if(json["is_deleted"] is int) {
      isDeleted = json["is_deleted"];
    }
    if(json["is_active"] is int) {
      isActive = json["is_active"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if(json["start_time"] is int) {
      startTime = json["start_time"];
    }
    if(json["end_time"] is int) {
      endTime = json["end_time"];
    }
    deletedAt = json["deleted_at"];
    if(json["distance"] is double) {
      distance = json["distance"];
    }
    if(json["is_wishlisted"] is int) {
      isWishlisted = json["is_wishlisted"];
    }
    crew = json["crew"];
    if(json["schedules"] is List) {
      schedules = json["schedules"] == null ? null : (json["schedules"] as List).map((e) => Schedules.fromJson(e)).toList();
    }
    if(json["event_fish_species"] is List) {
      eventFishSpecies = json["event_fish_species"] ?? [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["fee"] = fee;
    _data["event_type"] = eventType;
    _data["address"] = address;
    _data["lat"] = lat;
    _data["lng"] = lng;
    _data["team_size_min"] = teamSizeMin;
    _data["team_size_max"] = teamSizeMax;
    _data["about"] = about;
    _data["species"] = species;
    _data["anglers"] = anglers;
    _data["teams"] = teams;
    _data["weather"] = weather;
    _data["rules"] = rules;
    _data["disclaimer"] = disclaimer;
    _data["sp_user_id"] = spUserId;
    _data["logo"] = logo;
    _data["banner"] = banner;
    _data["is_deleted"] = isDeleted;
    _data["is_active"] = isActive;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["start_time"] = startTime;
    _data["end_time"] = endTime;
    _data["deleted_at"] = deletedAt;
    _data["distance"] = distance;
    _data["is_wishlisted"] = isWishlisted;
    _data["crew"] = crew;
    if(schedules != null) {
      _data["schedules"] = schedules?.map((e) => e.toJson()).toList();
    }
    if(eventFishSpecies != null) {
      _data["event_fish_species"] = eventFishSpecies;
    }
    return _data;
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

  Schedules({this.id, this.eventId, this.activityText, this.activityDate, this.isDeleted, this.isActive, this.createdAt, this.updatedAt});

  Schedules.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["event_id"] is int) {
      eventId = json["event_id"];
    }
    if(json["activity_text"] is String) {
      activityText = json["activity_text"];
    }
    if(json["activity_date"] is String) {
      activityDate = json["activity_date"];
    }
    if(json["is_deleted"] is int) {
      isDeleted = json["is_deleted"];
    }
    if(json["is_active"] is int) {
      isActive = json["is_active"];
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
    _data["event_id"] = eventId;
    _data["activity_text"] = activityText;
    _data["activity_date"] = activityDate;
    _data["is_deleted"] = isDeleted;
    _data["is_active"] = isActive;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}