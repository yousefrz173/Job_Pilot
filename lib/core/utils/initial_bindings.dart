import 'package:jobpilot/core/app_export.dart';
import 'package:jobpilot/data/apiClient/http_util.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(HttpUtil());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
