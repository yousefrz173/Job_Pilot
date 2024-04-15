import '../../../core/app_export.dart';
import '../models/company_model.dart';

/// A controller class for the CompanyScreen.

/// This class manages the state of the CompanyScreen, including the
/// current companyMode10bj
class CompanyController extends GetxController {
  Rx<CompanyModel> companyMode10bj = CompanyModel().obs;
}
