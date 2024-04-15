import '../../../core/app_export.dart';
import '../models/log_out_model.dart';

/// A controller class for the LogOutBottomsheet.

/// This class manages the state of the LogOutBottomsheet, including the
/// current logOutMode10bj
class LogOutController extends GetxController {
  Rx<LogOutModel> logOutMode10bj = LogOutModel().obs;
}
