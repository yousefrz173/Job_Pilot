import '../controller/home_controller.dart';
import 'package:get/get.dart';

import '../controller/search_controller.dart';

/// A binding class for the HomeScreen.

/// This class ensures that the HomeController is created when the
/// HomeScreen is first loaded.
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => SearchXController());
  }
}
