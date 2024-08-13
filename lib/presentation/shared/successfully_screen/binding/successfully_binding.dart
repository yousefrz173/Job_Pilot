import '../controller/successfully_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SuccessfullyScreen.

/// This class ensures that the SuccessfullyController is created when the
/// SuccessfullyScreen is first loaded.
class SuccessfullyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessfullyController());
  }
}
