class FishSpeciesListRespone {
    FishSpeciesListRespone({
        this.success,
        this.message,
       required this.data,
    });

    bool? success;
    String? message;
    List<FishSpeciesList> data = [];

    FishSpeciesListRespone.fromJson(Map<String, dynamic> json) {
    success: json["success"];
        message: json["message"];
        if (json["data"] is List) {
      data =
          (json["data"] as List).map((e) => FishSpeciesList.fromJson(e)).toList();
    }

      Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    data['data'] = this.data.map((v) => v.toJson()).toList();
    return data;
  }
 
}}

class FishSpeciesList {
    FishSpeciesList({
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

    factory FishSpeciesList.fromJson(Map<String, dynamic> json) => FishSpeciesList(
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
