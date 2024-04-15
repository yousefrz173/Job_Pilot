import 'package:jobpilot/presentation/check_your_email_screen/controller/check_your_email_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CheckYourEmailScreen.

/// This class ensures that the CheckYourEmailController is created when the
/// CheckYourEmailScreen is first loaded.
class CheckYourEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckYourEmailController());
  }
}
