enum UserRole { company, job_seeker, customer, NOUSER }

var currentRole = UserRole.company;

String enumToString(Object enumValue) {
  return enumValue.toString().split('.').last;
}
