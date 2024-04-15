import '../../../core/app_export.dart';
import '../models/search_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchTabContainerScreen.

/// This class manages the state of the SearchTabContainerScreen, including the
/// current searchTabContainerModelObj
class SearchTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  Rx<SearchTabContainerModel> searchTabContainerMode10bj =
      SearchTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    searchController1.dispose();
  }
}
