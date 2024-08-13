import '../../../../core/app_export.dart';

/// This class is used in the [notifications_item_widget] screen.
class NotificationsItemModel {
  NotificationsItemModel({
    this.logoGoogle,
    this.applicationSent,
    this.applicationsFor,
    this.duration,
    this.delete,
    this.id,
  }) {
    logoGoogle = logoGoogle ?? Rx(ImageConstant.imgGoogle220x15);
    applicationSent = applicationSent ?? Rx("Application sent");
    applicationsFor = applicationsFor ??
        Rx("Applications for Google companies have entered for company review");
    duration = duration ?? Rx("25 minutes ago");
    delete = delete ?? Rx("Delete");
    id = id ?? Rx("");
  }
  Rx<String>? logoGoogle;

  Rx<String>? applicationSent;

  Rx<String>? applicationsFor;

  Rx<String>? duration;

  Rx<String>? delete;

  Rx<String>? id;
}
