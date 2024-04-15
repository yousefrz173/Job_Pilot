import 'package:jobpilot/presentation/about_me_screen/controller/about_me_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AboutMeScreen.
///
/// This class ensures that the AboutMeController is created when the
///AboutMeScreen is first loaded.
class AboutMeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutMeController());
  }
}
