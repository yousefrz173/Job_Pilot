// lib/services/auth_service.dart
import 'package:get_storage/get_storage.dart';

class AuthService {
  final GetStorage _storage = GetStorage();
  final String _tokenKey = 'user_token';

  // Save the token
  void saveToken(String token) {
    _storage.write(_tokenKey, token);
  }

  // Read the token
  String? getToken() {
    return _storage.read(_tokenKey);
  }

  // Remove the token
  void removeToken() {
    _storage.remove(_tokenKey);
  }
}
