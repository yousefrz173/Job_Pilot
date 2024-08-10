import '../controller/sign_up_as_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddAJobScreen.

/// This class ensures that the AddAJobController is created when the
/// AddAJobScreen is first loaded.
class SignUpAsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpAsController());
  }
}
