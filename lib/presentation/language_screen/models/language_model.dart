import '../../../core/app_export.dart';
import 'language_item_model.dart';

/// This class defines the variables used in the [language_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LanguageModel {
  Rx<List<LanguageItemModel>> languageItemList = Rx([
    LanguageItemModel(
        circleImage: ImageConstant.imgRectangle4.obs,
        indonesianFirst: "Indonesian(First language)".obs,
        oralLevelTen: "Oral : Level 10".obs,
        writtenLevel: "Written : Level 10".obs)
  ]);
}
