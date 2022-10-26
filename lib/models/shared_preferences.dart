import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferences1 {
  Future<bool> setToken(String authToken) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('auth_token', authToken);
  }

  Future<String> getToken() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token') ?? '';
  }
}

class SharedPreferences2 {
  Future<bool> setId(int id) async {
    var prefs1 = await SharedPreferences.getInstance();
    return await prefs1.setInt('id', id);
  }

  Future<int> getId() async {
    var prefs1 = await SharedPreferences.getInstance();
    return prefs1.getInt('id') ?? 0;
  }
}

class SaveUpdatedName {
  Future<bool> saveUpdatedName(String firstname) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('firstname', firstname);
  }

  Future<String> getFirstLastName() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('firstname') ?? '';
  }
}

class SaveFirstName {
  Future<bool> saveFirstName(String firstname) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('firstname', firstname);
  }

  Future<String> getFirstName() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('firstname') ?? '';
  }
}

class SaveLastName {
  Future<bool> saveLastName(String lastname) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('lastname', lastname);
  }

  Future<String> getLastName() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('lastname') ?? '';
  }
}

class SaveEmail {
  Future<bool> saveEmail(String email) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('email', email);
  }

  Future<String> getEmail() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('email') ?? '';
  }
}

class SaveNumber {
  Future<bool> saveNumber(String number) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('number', number);
  }

  Future<String> getNumber() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('number') ?? '';
  }
}

class Dob {
  Future<bool> saveDob(String dob) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('dob', dob);
  }

  Future<String> getDob() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('dob') ?? '';
  }
}

class Gender {
  Future<bool> saveGender(String gender) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('gender', gender);
  }

  Future<String> getGender() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('gender') ?? '';
  }
}

class SaveProfilePic {
  Future<bool> saveProfilePic(String profilePic) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('profile_pic', profilePic);
  }

  Future<String> getProfilePic() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('profile_pic') ?? '';
  }
}

class SaveDescription {
  Future<bool> saveDescription(String description) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('description', description);
  }

  Future<String> getDescripton() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('description') ?? '';
  }
}

class SaveFlah {
  Future<bool> saveFlag(String flag) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('flag', flag);
  }

  Future<String> getFlag() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('flag') ?? '';
  }
}

class SaveCountryCode {
  Future<bool> saveCountryCode(String countryCode) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('country_code', countryCode);
  }

  Future<String> getCountryCode() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('country_code') ?? '';
  }
}
class SaveTeamCount {
  Future<bool> saveTeamCount(String teamCount) async {
    var prefs = await SharedPreferences.getInstance();
    return await prefs.setString('team_count', teamCount);
  }

  Future<String> getTeamCount() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('team_count') ?? '';
  }
}



