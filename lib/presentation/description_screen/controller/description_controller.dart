import '../../../core/app_export.dart';
import '../models/description_model.dart';

/// A controller class for the DescriptionScreen.

/// This class manages the state of the DescriptionScreen, including the
///current descriptionModel0bj
class DescriptionController extends GetxController {
  Rx<DescriptionModel> descriptionModelObj = DescriptionModel().obs;
}
