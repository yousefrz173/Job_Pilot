import '../../../core/app_export.dart';
import 'companyone_item_model.dart';

/// This class defines the variables used in the [company_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CompanyOneModel {
  Rx<List<CompanyoneItemModel>> companyoneItemList =
      Rx([CompanyoneItemModel(image: ImageConstant.imgImage3.obs)]);
}
