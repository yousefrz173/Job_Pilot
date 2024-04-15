import 'package:jobpilot/presentation/posting_container_screen/controller/posting_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PostingContainerScreen.

/// This class ensures that the PostingContainerController is created when the
/// PostingContainerScreen is first loaded.
class PostingContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostingContainerController());
  }
}
