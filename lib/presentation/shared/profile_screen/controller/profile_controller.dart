import '../../../../core/my_app_export.dart';
import '../models/profile_model.dart';

/// A controller class for the ProfileScreen.

/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelobj = ProfileModel().obs;

  Future<void> getProfile() async {
    // var role = await UserPreferences.loadRole();
    var rolePath = '/Company';
    try {
      var response = HttpUtil().get(
        path:
            '${AppConstants.COMPANY_PATH}${AppConstants.VIEW_PROFILE_PATH}${rolePath}/2',
      );
      print(response);
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
      );
    }
  }

  @override
  void onInit() {
    getProfile();
    super.onInit();
  }
}
