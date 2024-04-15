import 'package:jobpilot/presentation/my_profile_vone_screen/controller/my_profile_vone_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyProfileVoneScreen.

/// This class ensures that the MyProfileVoneController is created when the
/// MyProfileVoneScreen is first loaded.
class MyProfileVoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyProfileVoneController());
  }
}
