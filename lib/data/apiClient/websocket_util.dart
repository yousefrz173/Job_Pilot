import 'dart:convert';

import 'package:get/get.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

class WebSocketUtil extends GetxService {
  static final WebSocketUtil _instance = WebSocketUtil.internal();

  factory WebSocketUtil() {
    return _instance;
  }

  WebSocketChannel? _channel;

  WebSocketUtil.internal() {}

  void _handleMessage(dynamic message) {
    // Decode the message (assuming it's JSON-encoded)
    final Map<String, dynamic> decodedMessage = jsonDecode(message);

    switch (decodedMessage['event']) {
      case 'pusher:connection_established':
        print('Pusher: Connection established');
        // Handle connection established event
        break;
      case 'pusher:subscription_succeeded':
        print('Pusher: Subscription succeeded');
        // Handle subscription succeeded event
        break;
      case 'RespondApplicants':
        final eventData = decodedMessage['data'];
        print('Received RespondApplicants event: $eventData');
        // Add your custom handling logic here
        break;
      default:
        print('Unhandled event: ${decodedMessage['event']}');
    }
  }

  void connect(String companyName) {
    _channel = WebSocketChannel.connect(
      Uri.parse(
          'http://127.0.0.1:6001/app/123456789?protocol=7&client=js&version=4.4.0&flash=false'),
    );

    _channel?.stream.listen((message) {
      print(message);
      _handleMessage(message);
    }, onError: (error) {
      print('WebSocket Error: $error');
    }, onDone: () {
      print('WebSocket connection closed');
    });
  }

  void disconnect() {
    _channel?.sink.close(status.normalClosure);
  }

  void subscribeToChannel(String companyName) {
    final subscription = {
      "event": "pusher:subscribe",
      "data": {"channel": "Respond$companyName"}
    };
    _channel?.sink.add(subscription);
  }

  void unsubscribeFromChannel(String companyName) {
    final unsubscription = {
      "event": "pusher:unsubscribe",
      "data": {"channel": "Respond$companyName"}
    };
    _channel?.sink.add(unsubscription);
  }

  void sendData(String text) {
    if (text.isNotEmpty) {
      final message = {
        "channel": "ameer",
        "event": "App",
        "data": {
          "message": text,
          // Add other data fields as needed
        }
      };
      print(message);
      _channel?.sink.add(
        jsonEncode(
          message,
        ),
      );
    }
  }
}
