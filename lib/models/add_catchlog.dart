class AddCatchlog {
    AddCatchlog({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    Data? data;

    factory AddCatchlog.fromJson(Map<String, dynamic> json) => AddCatchlog(
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
        this.location,
        this.weight,
        this.length,
        this.pic,
        this.type,
        this.lng,
        this.lat,
        this.bait,
        this.comment,
        this.eventId,
        this.userId,
        this.updatedAt,
        this.createdAt,
        this.id,
    });

    String? location;
    String? weight;
    String? length;
    String ?pic;
    int? type;
    double? lng;
    double? lat;
    String? bait;
    String? comment;
    int? eventId;
    int? userId;
    DateTime? updatedAt;
    DateTime? createdAt;
    int? id;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        location: json["location"],
        weight: json["weight"],
        length: json["length"],
        pic: json["pic"],
        type: json["type"],
        lng: json["lng"].toDouble(),
        lat: json["lat"].toDouble(),
        bait: json["bait"],
        comment: json["comment"],
        eventId: json["event_id"],
        userId: json["user_id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "location": location,
        "weight": weight,
        "length": length,
        "pic": pic,
        "type": type,
        "lng": lng,
        "lat": lat,
        "bait": bait,
        "comment": comment,
        "event_id": eventId,
        "user_id": userId,
        "updated_at": updatedAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "id": id,
    };
}
