import '../../../core/app_export.dart';
import '../models/options_one_model.dart';

/// A controller class for the OptionsOneBottomsheet.

/// This class manages the state of the OptionsOneBottomsheet, including the
/// current optionsOneModelObj
class OptionsOneController extends GetxController {
  Rx<OptionsOneModel> optionsOneModelObj = OptionsOneModel().obs;
}
