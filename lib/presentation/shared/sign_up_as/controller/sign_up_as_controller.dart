import '../../../../core/my_app_export.dart';
import '../models/sign_up_as_model.dart';

/// A controller class for the AddAJobScreen.

/// This class manages the state of the AddAJobScreen, including the
/// current addAJobMode10bj
class SignUpAsController extends GetxController {
  Rx<SignUpAsModel> signUpAsModelObj = SignUpAsModel().obs;

  to(UserRole role) {
    Get.toNamed(
      AppRoutes.signUpScreen,
      arguments: {'role': role},
    );
  }
}
