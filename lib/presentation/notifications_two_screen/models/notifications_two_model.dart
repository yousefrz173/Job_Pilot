import '../../../core/app_export.dart';
import 'notificationstwo_item_model.dart';

/// This class defines the variables used in the [notifications_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsTwoModel {
  Rx<List<NotificationstwoItemModel>> notificationstwoItemList = Rx([
    NotificationstwoItemModel(
        logoGoogle: ImageConstant.imgGoogle220x15.obs,
        applicationSent: "Application sent".obs,
        duration: "25 minutes".obs),
    NotificationstwoItemModel(
        logoGoogle: ImageConstant.imgDribbbleLogo.obs,
        applicationSent: "Your job notification".obs,
        duration: "1 Hour".obs)
  ]);
}
