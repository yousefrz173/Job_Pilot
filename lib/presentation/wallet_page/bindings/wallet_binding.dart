import 'package:jobpilot/core/app_export.dart';

import '../controller/wallet_controller.dart';
import '../models/wallet_model.dart';

class WalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletController());
  }
}
