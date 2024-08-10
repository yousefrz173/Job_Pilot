import 'dart:math';

import 'package:get/get.dart';
import '../../../../core/utils/date_time_utils.dart';

class User {
  int? id;
  String? profilePhoto;
  String? type;
  String? token;
  final String? name;
  String? password;
  String? email;

  User({
    this.name,
    required this.password,
    required this.email,
    this.token,
    this.id,
    this.type,
    this.profilePhoto,
  });

  // Getter for the token
  String? get Token => token;

  resetToken() => token = '';

  // Method to check if there is a valid token
  bool get hasToken => token != null || token != '';

  // Singleton pattern for easy access
  static User get to => Get.find<User>();

  void setToken({required String? token}) {
    this.token = token;
  }

  User copyWith({
    String? token,
    String? name,
    String? email,
    String? password,
    int? id,
    String? type,
    String? profilePhoto,
  }) {
    return User(
      token: token ?? this.token,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      id: id ?? this.id,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      type: type ?? this.type,
    );
  }

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

class Company extends User {
  Company({
    required super.name,
    required super.password,
    required super.email,
    super.token,
    super.id,
    super.profilePhoto,
    super.type = "company",
    this.employeeNumber,
    this.establishmentDate,
  });
  final DateTime? establishmentDate;
  final String? employeeNumber;

  @override
  Company copyWith({
    String? token,
    String? name,
    String? email,
    String? password,
    DateTime? establishmentDate,
    String? employeeNumber,
    int? id,
    String? type,
    String? profilePhoto,
  }) {
    return Company(
      name: name ?? this.name,
      password: password ?? this.password,
      email: email ?? this.email,
      establishmentDate: establishmentDate ?? this.establishmentDate,
      employeeNumber: employeeNumber ?? this.employeeNumber,
      token: token ?? this.token,
      id: id ?? this.id,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      type: type ?? this.type,
    );
  }
}

class JobSeeker extends User {
  JobSeeker({
    super.token,
    required super.name,
    required super.password,
    required super.email,
    super.id,
    super.profilePhoto,
    super.type,
    this.fullName,
    this.birthDate,
  });
  final DateTime? birthDate;
  final String? fullName;

  @override
  JobSeeker copyWith({
    int? id,
    String? type = "job_seeker",
    String? profilePhoto,
    String? token,
    String? name,
    String? password,
    String? email,
    String? fullName,
    DateTime? birthDate,
  }) {
    return JobSeeker(
      name: name ?? this.name,
      password: password ?? this.password,
      email: email ?? this.email,
      birthDate: birthDate ?? this.birthDate,
      fullName: fullName ?? this.fullName,
      token: token ?? this.token,
      id: id ?? this.id,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      type: type ?? this.type,
    );
  }
}

class Customer extends User {
  Customer({
    required super.name,
    required super.password,
    required super.email,
    super.id,
    super.profilePhoto,
    super.type = "customer",
    super.token,
    this.fullName,
    this.birthDate,
  });
  final DateTime? birthDate;
  final String? fullName;

  @override
  Customer copyWith({
    int? id,
    String? type,
    String? profilePhoto,
    String? token,
    String? name,
    String? password,
    String? email,
    String? fullName,
    DateTime? birthDate,
  }) {
    return Customer(
      name: name ?? this.name,
      password: password ?? this.password,
      email: email ?? this.email,
      birthDate: birthDate ?? this.birthDate,
      fullName: fullName ?? this.fullName,
      token: token ?? this.token,
      id: id ?? this.id,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      type: type ?? this.type,
    );
  }
}
