import '../../../core/app_export.dart';
import 'aboutus_item_model.dart';

/// This class defines the variables used in the [about_us_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AboutUsModel {
  Rx<List<AboutusItemModel>> aboutusItemList =
      Rx([AboutusItemModel(image: ImageConstant.imgImage3.obs)]);
}
