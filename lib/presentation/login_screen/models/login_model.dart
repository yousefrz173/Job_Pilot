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
      value: UserRole.company,
      child: Text(
        enumToString(UserRole.company),
      ),
    ),
    DropdownMenuItem<UserRole>(
      value: UserRole.job_seeker,
      child: Text(
        enumToString(UserRole.job_seeker),
      ),
    ),
    DropdownMenuItem<UserRole>(
      value: UserRole.customer,
      child: Text(
        enumToString(UserRole.customer),
      ),
    )
  ];
}
