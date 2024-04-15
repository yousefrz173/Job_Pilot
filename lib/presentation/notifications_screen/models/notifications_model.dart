import '../../../core/app_export.dart';
import 'notifications_item_model.dart';

/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {
  Rx<List<NotificationsItemModel>> notificationsItemList = Rx([
    NotificationsItemModel(
        logoGoogle: ImageConstant.imgGoogle220x15.obs,
        applicationSent: "Application sent".obs,
        applicationsFor:
            "Applications for Google companies have entered for company review"
                .obs,
        duration: "25 minutes ago".obs,
        delete: "Delete".obs),
    NotificationsItemModel(
        logoGoogle: ImageConstant.imgDribbbleLogo.obs,
        applicationSent: "Application sent".obs,
        applicationsFor:
            "Applications for Dribbble companies have entered for company review"
                .obs,
        duration: "45 minutes ago".obs,
        delete: "Delete".obs),
    NotificationsItemModel(
        logoGoogle: ImageConstant.imgTwitterLogo.obs,
        applicationSent: "Application sent".obs,
        applicationsFor:
            "Applications for Twitter companies have entered for company review"
                .obs,
        duration: "5 Hours ago".obs,
        delete: "Delete".obs),
    NotificationsItemModel(
        logoGoogle: ImageConstant.imgLogoApple.obs,
        applicationSent: "Application sent".obs,
        applicationsFor:
            "Applications for Apple companies have entered for company review"
                .obs,
        duration: "1 Day ago".obs,
        delete: "Delete".obs),
    NotificationsItemModel(
        applicationSent: "Application sent".obs,
        applicationsFor:
            "Applications for Facebook companies have entered for company review"
                .obs,
        duration: "12 February 2022".obs,
        delete: "Delete".obs)
  ]);
}
