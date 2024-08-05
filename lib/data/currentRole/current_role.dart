enum UserRole { Company, Seeker, Customer, NOUSER }

var currentRole = UserRole.Company;

String enumToString(Object enumValue) {
  return enumValue.toString().split('.').last;
}
