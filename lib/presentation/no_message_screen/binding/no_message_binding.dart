import 'package:jobpilot/presentation/no_message_screen/controller/no_message_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NoMessageScreen.

/// This class ensures that the NoMessageController is created when the
/// NoMessageScreen is first loaded.
class NoMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoMessageController());
  }
}
