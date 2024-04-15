import '../../../core/app_export.dart';
import '../models/check_your_email_model.dart';

/// A controller class for the CheckYourEmailScreen.

/// This class manages the state of the CheckYourEmailScreen, including the
/// current checkYourEmailModelObj
class CheckYourEmailController extends GetxController {
  Rx<CheckYourEmailModel> checkYourEmailModelObj = CheckYourEmailModel().obs;
}
