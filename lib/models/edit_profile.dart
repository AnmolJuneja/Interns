
class EditProfile {
    EditProfile({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    DataE? data;

    factory EditProfile.fromJson(Map<String, dynamic> json) => EditProfile(
        success: json["success"],
        message: json["message"],
        data: DataE.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data!.toJson(),
    };
}

class DataE {
    DataE({
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
        this.wishlist,
    });

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
    String? authToken;
    int? profileStep;
    int? isVerified;
    UserDetails? userDetails;
    Address? address;
    List<Wishlist>? wishlist;

    factory DataE.fromJson(Map<String, dynamic> json) => DataE(
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
        userDetails: UserDetails.fromJson(json["user_details"]),
        address: Address.fromJson(json["address"]),
        wishlist: List<Wishlist>.from(json["wishlist"].map((x) => Wishlist.fromJson(x))),
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
        "user_details": userDetails!.toJson(),
        "address": address!.toJson(),
        "wishlist": List<dynamic>.from(wishlist!.map((x) => x.toJson())),
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
        this.lng,
        this.lat,
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
    String? lng;
    String? lat;
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
        lng: json["lng"],
        lat: json["lat"],
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
        "lng": lng,
        "lat": lat,
        "is_deleted": isDeleted,
        "is_default": isDefault,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
    };
}

class UserDetails {
    UserDetails({
        this.id,
        this.userId,
        this.fishingType,
        this.shirtSize,
        this.isVeteran,
        this.club,
        this.createdAt,
        this.updatedAt,
    });

    int? id;
    int? userId;
    String? fishingType;
    String? shirtSize;
    String? isVeteran;
    String? club;
    DateTime? createdAt;
    DateTime? updatedAt;

    factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        id: json["id"],
        userId: json["user_id"],
        fishingType: json["fishing_type"],
        shirtSize: json["shirt_size"],
        isVeteran: json["is_veteran"],
        club: json["club"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "fishing_type": fishingType,
        "shirt_size": shirtSize,
        "is_veteran": isVeteran,
        "club": club,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
    };
}

class Wishlist {
    Wishlist({
        this.id,
        this.userId,
        this.itemId,
        this.itemType,
        this.createdAt,
        this.updatedAt,
    });

    int? id;
    int? userId;
    int? itemId;
    String? itemType;
    DateTime? createdAt;
    DateTime? updatedAt;

    factory Wishlist.fromJson(Map<String, dynamic> json) => Wishlist(
        id: json["id"],
        userId: json["user_id"],
        itemId: json["item_id"],
        itemType: json["item_type"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "item_id": itemId,
        "item_type": itemType,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
    };
}
