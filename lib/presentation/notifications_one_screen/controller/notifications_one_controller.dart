import '../../../core/app_export.dart';
import '../models/notifications_one_model.dart';

/// A controller class for the NotificationsOneScreen.

/// This class manages the state of the NotificationsOneScreen, including the
/// current notificationsOneModelObj
class NotificationsOneController extends GetxController {
  Rx<NotificationsOneModel> notificationsOneModelObj =
      NotificationsOneModel().obs;
}
