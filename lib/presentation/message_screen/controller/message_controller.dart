import '../../../core/app_export.dart';
import '../models/message_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MessageScreen.

/// This class manages the state of the MessageScreen, including the
/// current messageMode10bj
class MessageController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<MessageModel> messageModelobj = MessageModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
