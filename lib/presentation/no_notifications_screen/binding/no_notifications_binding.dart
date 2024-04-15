import 'package:jobpilot/presentation/no_notifications_screen/controller/no_notifications_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NoNotificationsScreen.

/// This class ensures that the NoNotificationsController is created when the
/// NoNotificationsScreen is first loaded.
class NoNotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoNotificationsController());
  }
}
