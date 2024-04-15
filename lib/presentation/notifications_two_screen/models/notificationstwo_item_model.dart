import '../../../core/app_export.dart';

/// This class is used in the [notificationstwo_item_widget] screen.
class NotificationstwoItemModel {
  NotificationstwoItemModel({
    this.logoGoogle,
    this.applicationSent,
    this.duration,
    this.id,
  }) {
    logoGoogle = logoGoogle ?? Rx(ImageConstant.imgGoogle220x15);
    applicationSent = applicationSent ?? Rx("Application sent");
    duration = duration ?? Rx("25 minutes");
    id = id ?? Rx("");
  }

  Rx<String>? logoGoogle;

  Rx<String>? applicationSent;

  Rx<String>? duration;

  Rx<String>? id;
}
