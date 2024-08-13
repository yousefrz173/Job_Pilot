import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobpilot/data/models/userModels/user_models.dart';

import '../../../../core/my_app_export.dart';
import '../models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.

/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController companyNameController = TextEditingController();

  TextEditingController employeeNumberController = TextEditingController();

  TextEditingController nameUsernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController dateBirthEstablishmentController =
      TextEditingController();

  Rx<SignUpModel> signUpModel0bj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberme = false.obs;

  late final role = Get.arguments?['role'] ?? "";

  final ImagePicker _picker = ImagePicker();

  Rx<XFile?> selectedImage = Rx<XFile?>(null);

  Rx<DateTime> selectedDate = DateTime.now().obs;

  Rx<String> nameUsernameLabel = "n".obs;

  Rx<String> dateBirthEstablishmentLabel = "n".obs;

  Map<String, String> labels = {
    "name": "lbl_name",
    "username": "lbl_user_name",
    "establishment_date": "lbl_establishment_date",
    "birth_date": "lbl_birth_date",
  };

  // Function to show the date picker and update the selected date
  void pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
    }
  }

  // Function to get the formatted date string
  String get formattedDate =>
      selectedDate.value.toLocal().toString().split(' ')[0];

  @override
  void onInit() {
    if (role == UserRole.company) {
      nameUsernameLabel = Rx(labels["name"]!);
      dateBirthEstablishmentLabel = Rx(labels["establishment_date"]!);
    }
    if (role == UserRole.job_seeker || role == UserRole.customer) {
      nameUsernameLabel = Rx(labels["username"]!);
      dateBirthEstablishmentLabel = Rx(labels["birth_date"]!);
    }
    dateBirthEstablishmentController = TextEditingController(
      text: selectedDate.value.toLocal().toString().split(' ')[0],
    );
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    clearAllTextControllers();
  }

  void clearAllTextControllers() {
    fullNameController.clear();
    fullNameController.dispose();
    emailController.clear();
    emailController.dispose();
    passwordController.clear();
    passwordController.dispose();
    companyNameController.clear();
    companyNameController.dispose();
    employeeNumberController.clear();
    employeeNumberController.dispose();
    dateBirthEstablishmentController.clear();
    dateBirthEstablishmentController.dispose();
  }

  Future<String?> register() async {
    String path = role == UserRole.company
        ? AppConstants.COMPANY_PATH
        : role == UserRole.job_seeker
            ? AppConstants.SEEKER_PATH
            : AppConstants.CUSTOMER_PATH;

    Map<String, dynamic> data = {};
    switch (role) {
      case UserRole.company:
        data = {
          'name': nameUsernameController.text,
          'password': passwordController.text,
          'establishment_date': dateBirthEstablishmentController.text,
          'employee_number': employeeNumberController.text,
          'email': emailController.text,
        };
        break;
      default:
        data = {
          'username': nameUsernameController.text,
          'password': passwordController.text,
          'birth_date': dateBirthEstablishmentController.text,
          'full_name': fullNameController.text,
          'email': emailController.text,
        };
    }
    try {
      if (kDebugMode) {
        print(data);
      }
      var response = await HttpUtil().post(
        path: '$path${AppConstants.REGISTER_PATH}',
        data: data,
      );
      if (response['statusNumber'] == 200) {
        UserPreferences.saveUser(
          role == UserRole.company
              ? Company(
                  name: nameUsernameController.text,
                  email: emailController.text,
                  password: passwordController.text,
                  employeeNumber:
                      int.tryParse(employeeNumberController.text) ?? 0,
                  establishmentDate: DateTime.tryParse(
                          dateBirthEstablishmentController.text) ??
                      DateTime.now(),
                )
              : role == UserRole.job_seeker
                  ? JobSeeker(
                      name: nameUsernameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      birthDate:
                          DateTime.parse(dateBirthEstablishmentController.text),
                      fullName: fullNameController.text,
                    )
                  : Customer(
                      name: nameUsernameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      birthDate:
                          DateTime.parse(dateBirthEstablishmentController.text),
                      fullName: fullNameController.text,
                    ),
        );
        Get.offNamed(AppRoutes.loginScreen);
      }
      if (kDebugMode) {
        print(response['password']);
      }
      Get.snackbar(
        'Error',
        response['message'],
      );
      return response['message'] ?? '';
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
      );
    }
  }

  String get imageName => selectedImage.value?.name ?? "Choose Picture";

  void pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImage.value = image;
    }
    update();
  }
}
