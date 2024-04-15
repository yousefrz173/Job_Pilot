import '../../../core/app_export.dart';
import 'notificationsone_item_model.dart';

/// This class defines the variables used in the [notifications_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsOneModel {
  Rx<List<NotificationsoneItemModel>> notificationsoneItemList = Rx([
    NotificationsoneItemModel(
        logoGoogle: ImageConstant.imgGoogle220x15.obs,
        applicationSent: "Application sent".obs,
        time: "25 min".obs),
    NotificationsoneItemModel(
        logoGoogle: ImageConstant.imgDribbbleLogo.obs,
        applicationSent: "Your job notification".obs,
        time: "1 Hour".obs),
    NotificationsoneItemModel(logoGoogle: ImageConstant.imgTwitterLogo.obs),
    NotificationsoneItemModel(
        logoGoogle: ImageConstant.imgLogoApple.obs,
        applicationSent: "Application sent".obs,
        time: "12 Feb 2022".obs)
  ]);
}
