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
