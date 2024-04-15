import 'package:jobpilot/presentation/update_password_screen/controller/update_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpdatePasswordScreen.

/// This class ensures that the UpdatePasswordController is created when the
/// UpdatePasswordScreen is first loaded.
class UpdatePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpdatePasswordController());
  }
}
