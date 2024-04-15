import '../../../core/app_export.dart';

/// This class is used in the [notificationsone_item_widget] screen.
class NotificationsoneItemModel {
  NotificationsoneItemModel({
    this.logoGoogle,
    this.applicationSent,
    this.time,
    this.id,
  }) {
    logoGoogle = logoGoogle ?? Rx(ImageConstant.imgGoogle220x15);
    applicationSent = applicationSent ?? Rx("Application sent");
    time = time ?? Rx("25 min");
    id = id ?? Rx("");
  }
  Rx<String>? logoGoogle;

  Rx<String>? applicationSent;

  Rx<String>? time;

  Rx<String>? id;
}
