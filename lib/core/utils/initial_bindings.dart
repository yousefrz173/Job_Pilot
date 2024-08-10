import 'package:jobpilot/core/app_export.dart';
import 'package:jobpilot/data/apiClient/http_util.dart';
import 'package:jobpilot/data/apiClient/websocket_util.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(WebSocketUtil());
    Get.put(PrefUtils());
    Get.put(HttpUtil());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
