import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferences1 {
  Future<bool> setToken(String authToken) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('auth_token', authToken);
  }

  Future<String> getToken() async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.getString('auth_token') ?? '';
  }
}

class SharedPreferences2 {
  Future<bool> setId(int id) async {
    var prefs1 = await SharedPreferences.getInstance();
    return await prefs1.setInt('id', id);
  }

  Future<int> getId() async {
    var prefs1 = await SharedPreferences.getInstance();
    return await prefs1.getInt('id') ?? 0;
  }
}
class SaveUpdatedName {
  Future<bool> saveUpdatedName(String firstname) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('firstname',firstname);
  }

  Future<String> getFirstLastName() async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.getString('firstname') ?? '';
  }
}

class SaveFirstName {
  Future<bool> saveFirstName(String firstname) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('firstname',firstname);
  }

  Future<String> getFirstName() async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.getString('firstname') ?? '';
  }
}
class SaveLastName {
  Future<bool> saveLastName(String lastname) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('lastname',lastname);
  }

  Future<String> getLastName() async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.getString('lastname') ?? '';
  }
}
class SaveEmail {
  Future<bool> saveEmail(String email) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('email',email);
  }

  Future<String> getEmail() async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.getString('email') ?? '';
  }
}
class SaveNumber {
  Future<bool> saveNumber(String number) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('number',number);
  }

  Future<String> getNumber() async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.getString('number') ?? '';
  }
}

class Dob {
  Future<bool> saveDob(String dob) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('dob',dob);
  }

  Future<String> getDob() async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.getString('dob') ?? '';
  }
}
class Gender {
  Future<bool> saveGender(String gender) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('gender',gender);
  }

  Future<String> getGender() async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.getString('gender') ?? '';
  }
}


