import '../../../core/app_export.dart';
import '../models/type_of_workplace_model.dart';

/// A controller class for the TypeOfWorkplaceBottomsheet.

/// This class manages the state of the TypeOfWorkplaceBottomsheet, including the
/// current typeOfWorkplaceModelObj
class TypeOfWorkplaceController extends GetxController {
  Rx<TypeOfWorkplaceModel> typeOfWorkplaceModelObj = TypeOfWorkplaceModel().obs;
}
