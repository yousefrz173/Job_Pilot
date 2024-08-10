import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/userModels/user_models.dart';

class UserPreferences {
  static const String _tokenKey = 'user_token';
  static const String _roleKey = 'user_role';
  static const String _userKey = 'user';

  static Future<void> saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    // Convert User object to JSON string
    String userJson = jsonEncode(user.toJson());
    // Save JSON string to SharedPreferences
    await prefs.setString(_userKey, userJson);
  }

  static Future<User?> loadUser() async {
    final prefs = await SharedPreferences.getInstance();
    // Retrieve JSON string from SharedPreferences
    String? userJson = prefs.getString(_userKey);
    if (userJson != null) {
      // Convert JSON string back to User object
      Map<String, dynamic> userMap = jsonDecode(userJson);
      return User.fromJson(userMap);
    }
    return null; // Return null if no user data is found
  }

  static Future<String?> loadRole() async {
    final prefs = await SharedPreferences.getInstance();
    // Retrieve JSON string from SharedPreferences
    String? userRole = prefs.getString(_roleKey);
    if (userRole != null) {
      // Convert JSON string back to User object
      return userRole;
    }
    return 'company'; // Return null if no user data is found
  }

  // Save the user token
  static Future<void> saveToken({String? token}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token ?? '');
  }

  // Save the user role
  static Future<void> saveRole({String? role}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_roleKey, role ?? '');
  }

  static Future<void> clearUserData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Remove the user JSON string
    await prefs.remove(_userKey);

    // Remove the role string
    await prefs.remove(_roleKey);

    // Remove the token string
    await prefs.remove(_tokenKey);
  }
}
