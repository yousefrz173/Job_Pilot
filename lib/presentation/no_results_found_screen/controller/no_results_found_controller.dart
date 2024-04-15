import '../../../core/app_export.dart';
import '../models/no_results_found_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NoResultsFoundScreen.

/// This class manages the state of the NoResultsFoundScreen, including the
/// current noResultsFoundMode10bj
class NoResultsFoundController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<NoResultsFoundModel> noResultsFoundModel0bj = NoResultsFoundModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
