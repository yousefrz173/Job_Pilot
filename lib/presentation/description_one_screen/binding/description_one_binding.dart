import 'package:jobpilot/presentation/description_one_screen/controller/description_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DescriptionOneScreen.

/// This class ensures that the DescriptionOneController is created when the
/// DescriptionOneScreen is first loaded.
class DescriptionOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DescriptionOneController());
  }
}
