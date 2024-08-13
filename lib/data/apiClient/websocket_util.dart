import 'dart:convert';
import 'package:get/get.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

class WebSocketUtil extends GetxService {
  static final WebSocketUtil _instance = WebSocketUtil._internal();

  factory WebSocketUtil() {
    return _instance;
  }

  WebSocketChannel? _channel;

  WebSocketUtil._internal();

  void _handleMessage(dynamic message) {
    final Map<String, dynamic> decodedMessage = jsonDecode(message);
    switch (decodedMessage['event']) {
      case 'pusher:connection_established':
        print('Pusher: Connection established');
        break;
      case 'pusher:subscription_succeeded':
        print('Pusher: Subscription succeeded');
        break;
      case 'RespondApplicants':
        final eventData = decodedMessage['data'];
        print('Received RespondApplicants event: $eventData');
        break;
      default:
        print('Unhandled event: ${decodedMessage['event']}');
    }
  }

  void connect(String companyName) {
    _channel = WebSocketChannel.connect(
      Uri.parse(
          'ws://192.168.1.5:6001/app/123456789?protocol=7&client=js&version=4.3.1&flash=false'),
    );
    print(_channel);

    _channel?.stream.listen(
      (message) {
        print(message);
        _handleMessage(message);
      },
      onError: (error) {
        print('WebSocket Error: $error');
      },
      onDone: () {
        print('WebSocket connection closed');
      },
    );
  }

  void disconnect() {
    _channel?.sink.close(status.normalClosure);
  }

  void subscribeToChannel(String companyName) {
    final subscription = {
      "event": "pusher:subscribe",
      "data": {"channel": "Respond$companyName"}
    };
    _channel?.sink.add(jsonEncode(subscription));
  }

  void unsubscribeFromChannel(String companyName) {
    final unsubscription = {
      "event": "pusher:unsubscribe",
      "data": {"channel": "Respond$companyName"}
    };
    _channel?.sink.add(jsonEncode(unsubscription));
  }

  void sendData(String text) {
    if (text.isNotEmpty) {
      final message = {
        "channel": "ameer",
        "event": "App",
        "data": {
          "message": text,
        }
      };
      print(message);
      _channel?.sink.add(jsonEncode(message));
    }
  }
}
