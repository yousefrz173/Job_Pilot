import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../../../core/my_app_export.dart';
import '../../../../core/utils/notification_service.dart';
import '../../../../data/apiClient/websocket_util.dart';
import '../models/my_connection_model.dart';

/// A controller class for the MyConnectionScreen.

/// This class manages the state of the MyConnectionScreen, including the
/// current myConnectionModel0bj
class MyConnectionController extends GetxController {
  Rx<MyConnectionModel> myConnectionModelObj = MyConnectionModel().obs;

  final WebSocketUtil webSocketService = Get.find<WebSocketUtil>();

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> connectToWebSocketChannel() async {
    try {
      webSocketService.connect('company1');
    } catch (e) {
      print(e);
    }
  }

  void showNotification() {
    Get.find<NotificationService>().showBigTextNotification(
      title: 'New message title',
      body: 'your long body',
      // fln: flutterLocalNotificationsPlugin,
    );
  }
}
