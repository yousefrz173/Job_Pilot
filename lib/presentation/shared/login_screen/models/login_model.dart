import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

/// This class defines the variables used in the [login_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LoginModel {
  static List<DropdownMenuItem<UserRole>> userRolesDropdownItems = [
    DropdownMenuItem<UserRole>(
      value: UserRole.NOUSER,
      child: Text(
        enumToString(UserRole.NOUSER),
      ),
    ),
    DropdownMenuItem<UserRole>(
      value: UserRole.Company,
      child: Text(
        enumToString(UserRole.Company),
      ),
    ),
    DropdownMenuItem<UserRole>(
      value: UserRole.Seeker,
      child: Text(
        enumToString(UserRole.Seeker),
      ),
    ),
    DropdownMenuItem<UserRole>(
      value: UserRole.Customer,
      child: Text(
        enumToString(UserRole.Customer),
      ),
    )
  ];
}
