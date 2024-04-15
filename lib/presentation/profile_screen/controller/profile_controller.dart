import '../../../core/app_export.dart';
import '../models/profile_model.dart';

/// A controller class for the ProfileScreen.

/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelobj = ProfileModel().obs;
}
