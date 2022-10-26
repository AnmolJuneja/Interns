class Login {
  bool? success;
  String? message;
  Data?data;

  Login({required this.success, required this.message, required this.data});

  Login.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    // ignore: unnecessary_new
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    // ignore: unnecessary_new
    final Map<String, dynamic> data = <String, dynamic>{};
    // ignore: unnecessary_this
    data['success'] = this.success;
    // ignore: unnecessary_this
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? phoneNumber;
  String? otp;
  String ?confirmationToken;

  // Data({required this.id, required this.phoneNumber, required this.otp, required this.confirmationToken});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phoneNumber = json['phone_number'];
    otp = json['otp'];
    confirmationToken = json['confirmation_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['phone_number'] = phoneNumber;
    data['otp'] = otp;
    data['confirmation_token'] = confirmationToken;
    return data;
  }
}
