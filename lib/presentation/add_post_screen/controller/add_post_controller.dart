import '../../../core/app_export.dart';
import '../models/add_post_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddPostScreen.

/// This class manages the state of the AddPostScreen, including the
/// current addPostModel0bj
class AddPostController extends GetxController {
  TextEditingController thirtyNineController = TextEditingController();

  TextEditingController fortyController = TextEditingController();

  Rx<AddPostModel> addPostMode10bj = AddPostModel().obs;

  @override
  void onClose() {
    super.onClose();
    thirtyNineController.dispose();
    fortyController.dispose();
  }
}
