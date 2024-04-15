import '../../../core/app_export.dart';
import 'myconnection_item_model.dart';

/// This class defines the variables used in the [my_connection_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyConnectionModel {
  Rx<List<MyconnectionItemModel>> myconnectionItemList = Rx([
    MyconnectionItemModel(
        iconButton: ImageConstant.imgGoogle220x15.obs,
        googleInc: "Google Inc".obs,
        distance: "1M Followers".obs),
    MyconnectionItemModel(
        iconButton: ImageConstant.imgDribbbleLogo.obs,
        googleInc: "Dribbble Inc".obs,
        distance: "1M Followers".obs),
    MyconnectionItemModel(
        iconButton: ImageConstant.imgTwitterLogo.obs,
        googleInc: "Twitter Inc".obs,
        distance: "1M Followers".obs),
    MyconnectionItemModel(
        iconButton: ImageConstant.imgAppleLogo.obs,
        googleInc: "Apple Inc".obs,
        distance: "1M Followers".obs),
    MyconnectionItemModel(
        googleInc: "Facebook Inc".obs, distance: "1M Followers".obs),
    MyconnectionItemModel(
        googleInc: "Microsoft Inc".obs, distance: "1M Followers".obs)
  ]);
}
