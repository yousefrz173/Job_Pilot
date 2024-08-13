import '../controller/my_connection_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyConnectionScreen.

/// This class ensures that the MyConnectionController is created when the
/// MyConnectionScreen is first loaded.
class MyConnectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyConnectionController());
  }
}
