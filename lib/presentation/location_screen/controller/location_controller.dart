import '../../../core/app_export.dart';
import '../models/location_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LocationScreen.

/// This class manages the state of the LocationScreen, including the
/// current locationModel0bj
class LocationController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<LocationModel> locationModelObj = LocationModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
