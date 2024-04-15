import '../../../core/app_export.dart';
import '../models/notifications_two_model.dart';

/// A controller class for the NotificationsTwoScreen.

/// This class manages the state of the NotificationsTwoScreen, including the
/// current notificationsTwoModelObj
class NotificationsTwoController extends GetxController {
  Rx<NotificationsTwoModel> notificationsTwoModelObj =
      NotificationsTwoModel().obs;
}
