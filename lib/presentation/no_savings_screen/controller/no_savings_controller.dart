import '../../../core/app_export.dart';
import '../models/no_savings_model.dart';

/// A controller class for the NoSavingsScreen.

/// This class manages the state of the NoSavingsScreen, including the
/// current noSavingsMode10bj
class NoSavingsController extends GetxController {
  Rx<NoSavingsModel> noSavingsModelObj = NoSavingsModel().obs;
}
