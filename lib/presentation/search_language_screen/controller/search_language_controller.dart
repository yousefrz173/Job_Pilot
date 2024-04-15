import '../../../core/app_export.dart';
import '../models/search_language_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchLanguageScreen.

/// This class manages the state of the SearchLanguageScreen, including the
/// current searchLanguageMode10bj
class SearchLanguageController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchLanguageModel> searchLanguageModelObj = SearchLanguageModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
