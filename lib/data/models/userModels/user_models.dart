import 'package:get/get.dart';

class User {
  String? token;
  final String? name;
  String? password;
  String? email;

  User({this.name, required this.password, required this.email, this.token});

  // Getter for the token
  String? get Token => token;

  resetToken() => token = '';

  // Method to check if there is a valid token
  bool get hasToken => token != null || token != '';

  // Singleton pattern for easy access
  static User get to => Get.find<User>();

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      password: '',
      token: json['token'],
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'name': name,
      'email': email,
    };
  }
}
