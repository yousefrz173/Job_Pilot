import '../../../../core/my_app_export.dart';

/// This class is used in the [andyrobertson_item_widget] screen.
class AndyrobertsonItemModel {
  AndyrobertsonItemModel({
    this.andyRobertson,
    this.andyRobertson1,
    this.ohYesPleaseSend,
    this.distance,
    this.notifNewMessage,
    this.id,
  }) {
    andyRobertson = andyRobertson ?? Rx(ImageConstant.imgEllipse48);
    andyRobertson1 = andyRobertson1 ?? Rx("Andy Robertson");
    ohYesPleaseSend =
        ohYesPleaseSend ?? Rx("Oh yes, please send your CV/Res ... ");
    distance = distance ?? Rx("5m ago");
    notifNewMessage = notifNewMessage ?? Rx("2");
    id = id ?? Rx("");
  }

  Rx<String>? andyRobertson;

  Rx<String>? andyRobertson1;

  Rx<String>? ohYesPleaseSend;

  Rx<String>? distance;

  Rx<String>? notifNewMessage;

  Rx<String>? id;
}
