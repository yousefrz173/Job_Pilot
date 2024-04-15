import 'package:jobpilot/presentation/add_post_screen/controller/add_post_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPostScreen.

/// This class ensures that the AddPostController is created when the
/// AddPostScreen is first loaded.
class AddPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPostController());
  }
}
