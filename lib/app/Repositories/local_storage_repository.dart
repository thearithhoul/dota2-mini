import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageRepository {
  static Future<dynamic> getLocalStorage({String key = 'data'}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? value = prefs.getString(key);
    if (value == null) {
      return [];
    }
    return jsonDecode(value);
  }

  static Future<void> saveLocalStorage(Object value,
      {String key = 'data'}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String encode = jsonEncode(value);
    await prefs.setString(key, encode);
  }

  Future<void> deleteLocalStorage({String key = 'data'}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
}
