import '../../../core/app_export.dart';
import '../models/about_us_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AboutUsTabContainerScreen.

/// This class manages the state of the AboutUsTabContainerScreen, including the
/// current aboutUsTabContainerModelObj
class AboutUsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<AboutUsTabContainerModel> aboutUsTabContainerMode10bj =
      AboutUsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
