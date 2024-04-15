import 'package:jobpilot/presentation/about_us_tab_container_screen/controller/about_us_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AboutUsTabContainerScreen.
///
/// This class ensures that the AboutUsTabContainerController is created when the
/// AboutUsTabContainerScreen is first loaded.
///
class AboutUsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutUsTabContainerController());
  }
}
