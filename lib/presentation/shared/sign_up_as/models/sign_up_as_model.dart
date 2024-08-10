import '../../../../core/my_app_export.dart';
import 'signupas_item_model.dart';

/// This class defines the variables used in the [add_a_job_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpAsModel {
  Rx<List<SignUpAsItemModel>> signUpAsItemList = Rx([
    SignUpAsItemModel(
        jobPosition: UserRole.company.obs,
        close: ImageConstant.imgArrowright.obs,
        id: 1.obs),
    SignUpAsItemModel(
        jobPosition: UserRole.job_seeker.obs,
        close: ImageConstant.imgArrowright.obs,
        id: 2.obs),
    SignUpAsItemModel(
        jobPosition: UserRole.customer.obs,
        close: ImageConstant.imgArrowright.obs,
        id: 3.obs),
  ]);
}
