import '../../../core/app_export.dart';
import '../models/your_application_model.dart';

/// A controller class for the YourApplicationScreen.

/// This class manages the state of the YourApplicationScreen, including the
/// current yourApplicationModelObj
class YourApplicationController extends GetxController {
  Rx<YourApplicationModel> yourApplicationModelObj = YourApplicationModel().obs;
}
