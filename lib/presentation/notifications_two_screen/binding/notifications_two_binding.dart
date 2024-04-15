import 'package:jobpilot/presentation/notifications_two_screen/controller/notifications_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationsTwoScreen.

/// This class ensures that the NotificationsTwoController is created when the
/// NotificationsTwoScreen is first loaded.
class NotificationsTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsTwoController());
  }
}
