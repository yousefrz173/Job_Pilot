import '../../../../core/app_export.dart';
import 'signupas_item_model.dart';

/// This class defines the variables used in the [add_a_job_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpAsModel {
  Rx<List<SignUpAsItemModel>> signUpAsItemList = Rx([
    SignUpAsItemModel(
        jobPosition: UserRole.Company.obs,
        close: ImageConstant.imgArrowright.obs,
        id: 1.obs),
    SignUpAsItemModel(
        jobPosition: UserRole.Seeker.obs,
        close: ImageConstant.imgArrowright.obs,
        id: 2.obs),
    SignUpAsItemModel(
        jobPosition: UserRole.Customer.obs,
        close: ImageConstant.imgArrowright.obs,
        id: 3.obs),
  ]);
}
