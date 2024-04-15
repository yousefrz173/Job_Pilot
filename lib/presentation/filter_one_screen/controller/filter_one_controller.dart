import '../../../core/app_export.dart';
import '../models/filter_one_model.dart';

/// A controller class for the FilterOneScreen.

/// This class manages the state of the FilterOneScreen, including the
/// current filterOneModelObj
class FilterOneController extends GetxController {
  Rx<FilterOneModel> filterOneModelObj = FilterOneModel().obs;

  Rx<String> lastUpdate = "".obs;

  Rx<String> typeOfWorkplace = "".obs;

  Rx<bool> californiaUSA = false.obs;

  Rx<bool> texazUSA = false.obs;

  Rx<bool> newYorkUSA = false.obs;

  Rx<bool> floridaUSA = false.obs;

  Rx<String> experience = "".obs;

  Rx<bool> design = false.obs;

  Rx<bool> finance = false.obs;

  Rx<bool> education = false.obs;

  Rx<bool> health = false.obs;

  Rx<bool> restuarant = false.obs;

  Rx<bool> programmer = false.obs;
}
