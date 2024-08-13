import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:jobpilot/core/my_app_export.dart';
import 'package:jobpilot/data/apiClient/websocket_util.dart';

import 'notification_service.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
      WebSocketUtil(),
      // tag: AppConstants.WEB_SOCKET_GETX_TAG,
    );
    Get.lazyPut<NotificationService>(
      () => NotificationService(
        FlutterLocalNotificationsPlugin(),
      ),
    );
    Get.put(PrefUtils());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
