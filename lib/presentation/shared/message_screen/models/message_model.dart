import '../../../../core/my_app_export.dart';
import 'andyrobertson_item_model.dart';
import 'pm_item_model.dart';

/// This class defines the variables used in the [message_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageModel {
  Rx<List<AndyrobertsonItemModel>> andyrobertsonItemList = Rx([
    AndyrobertsonItemModel(
        andyRobertson: ImageConstant.imgEllipse48.obs,
        andyRobertson1: "Andy Robertson".obs,
        ohYesPleaseSend: "Oh yes, please send your CV/Res ... ".obs,
        distance: "5m ago".obs,
        notifNewMessage: "2".obs),
    AndyrobertsonItemModel(
        andyRobertson: ImageConstant.imgEllipse48.obs,
        andyRobertson1: "Alex Morgan".obs,
        ohYesPleaseSend: "I saw the UI/UX Designer vac... ".obs,
        distance: "09:30 am".obs,
        notifNewMessage: "".obs),
    AndyrobertsonItemModel(
        andyRobertson: ImageConstant.imgEllipse48.obs,
        andyRobertson1: "Alex Morgan".obs,
        ohYesPleaseSend: "I saw the UI/UX Designer vac... ".obs,
        distance: "09:30 am".obs,
        notifNewMessage: "".obs),
    AndyrobertsonItemModel(
        andyRobertson: ImageConstant.imgEllipse48.obs,
        andyRobertson1: "Alex Morgan".obs,
        ohYesPleaseSend: "I saw the UI/UX Designer vac... ".obs,
        distance: "09:30 am".obs,
        notifNewMessage: "".obs),
    AndyrobertsonItemModel(
        andyRobertson: ImageConstant.imgEllipse48.obs,
        andyRobertson1: "Alex Morgan".obs,
        ohYesPleaseSend: "I saw the UI/UX Designer vac... ".obs,
        distance: "09:30 am".obs,
        notifNewMessage: "".obs),
  ]);

  Rx<List<PmItemModel>> pmItemList = Rx([
    PmItemModel(
        pm: ImageConstant.imgEllipse482.obs,
        meganRapinoe: "Megan Rapinoe".obs,
        iSawTheUIUX: "I saw the UI/UX Designer vac ... ".obs,
        time: "01:00 pm".obs),
    PmItemModel(
        pm: ImageConstant.imgEllipse483.obs,
        meganRapinoe: "Alessandro Bastoni".obs,
        iSawTheUIUX: "I saw the UI/UX Designer vac ... ".obs,
        time: "06:00 pm".obs),
    PmItemModel(
        pm: ImageConstant.imgUnsplashTavpde7fxgy.obs,
        meganRapinoe: "Ilkay Gundogan".obs,
        iSawTheUIUX: "I saw the UI/UX Designer vac ... ".obs,
        time: "Yesterday".obs)
  ]);
}
