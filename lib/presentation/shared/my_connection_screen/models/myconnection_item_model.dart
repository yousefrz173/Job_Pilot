import '../../../../core/my_app_export.dart';

/// This class is used in the [myconnection_item_widget] screen.
class MyconnectionItemModel {
  MyconnectionItemModel({
    this.iconButton,
    this.googleInc,
    this.distance,
    this.id,
  }) {
    iconButton = iconButton ?? Rx(ImageConstant.imgGoogle220x15);
    googleInc = googleInc ?? Rx("Google Inc");
    distance = distance ?? Rx("1M Followers");
    id = id ?? Rx("");
  }
  Rx<String>? iconButton;

  Rx<String>? googleInc;

  Rx<String>? distance;

  Rx<String>? id;
}
