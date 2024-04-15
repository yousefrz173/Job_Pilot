import 'package:jobpilot/presentation/company_one_screen/controller/company_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CompanyOneScreen.

/// This class ensures that the CompanyOneController is created when the
/// CompanyOneScreen is first loaded.
class CompanyOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompanyOneController());
  }
}
