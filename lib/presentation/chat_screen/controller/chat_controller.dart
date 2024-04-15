import '../../../core/app_export.dart';
import '../models/chat_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChatScreen.

/// This class manages the state of the ChatScreen, including the
/// current chatMode10bj
class ChatController extends GetxController {
  TextEditingController attachController = TextEditingController();

  Rx<ChatModel> chatModel0bj = ChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    attachController.dispose();
  }
}
