import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  SharedPreferencesHelper._();
  static late SharedPreferencesHelper instance;
  static late SharedPreferences _pref;
  // Initialize SharedPreferences

  static Future<void> initialize() async {
    instance = SharedPreferencesHelper._();
    _pref = await SharedPreferences.getInstance();
  }

// Save data with type-specific handling
  Future<bool> setData({required String key, required dynamic value}) async {
    try {
      if (value is String) {
        return await _pref.setString(key, value);
      } else if (value is bool) {
        return await _pref.setBool(key, value);
      } else if (value is int) {
        return await _pref.setInt(key, value);
      } else if (value is double) {
        return await _pref.setDouble(key, value);
      } else if (value is List<String>) {
        return await _pref.setStringList(key, value);
      } else {
        return false; // Invalid type
      }
    } catch (e) {
      // Handle errors if needed
      return false;
    }
  }

  // Get data with type-specific methods
  String? getString(String key) => _pref.getString(key);
  bool? getBool(String key) => _pref.getBool(key);
  int? getInt(String key) => _pref.getInt(key);
  double? getDouble(String key) => _pref.getDouble(key);
  List<String>? getStringList(String key) => _pref.getStringList(key);

  // General getter (optional, for flexibility)
  Object? getData(String key) => _pref.get(key);

  // Clear all stored data
  Future<bool> clear() async {
    return await _pref.clear();
  }

  // Delete a specific key
  Future<bool> delete(String key) async {
    return await _pref.remove(key);
  }
}
