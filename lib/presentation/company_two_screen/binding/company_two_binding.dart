import 'package:jobpilot/presentation/company_two_screen/controller/company_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CompanyTwoScreen.

/// This class ensures that the CompanyTwoController is created when the
/// CompanyTwoScreen is first loaded.
class CompanyTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompanyTwoController());
  }
}
