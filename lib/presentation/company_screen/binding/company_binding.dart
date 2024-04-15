import 'package:jobpilot/presentation/company_screen/controller/company_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CompanyScreen.

/// This class ensures that the CompanyController is created when the
/// CompanyScreen is first loaded.
class CompanyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompanyController());
  }
}
