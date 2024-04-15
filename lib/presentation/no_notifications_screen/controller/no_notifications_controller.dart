import '../../../core/app_export.dart';
import '../models/no_notifications_model.dart';

/// A controller class for the NoNotificationsScreen.

/// This class manages the state of the NoNotificationsScreen, including the
/// current noNotificationsModelObj
class NoNotificationsController extends GetxController {
  Rx<NoNotificationsModel> noNotificationsModelObj = NoNotificationsModel().obs;
}
