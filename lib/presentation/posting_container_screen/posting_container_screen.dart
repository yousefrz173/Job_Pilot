import 'package:jobpilot/presentation/posting_page/posting_page.dart';
import 'package:jobpilot/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/posting_container_controller.dart'; // ignore_for_file: must_be_immutable

class PostingContainerScreen extends GetWidget<PostingContainerController> {
  const PostingContainerScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.postingPage,
          onGenerateRoute: (routeSetting) => GetPageRoute(
            page: () => getCurrentPage(routeSetting.name!),
            transition: Transition.noTransition,
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.postingPage;
      case BottomBarEnum.Connections:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Chat:
        return "/";
      case BottomBarEnum.Bookmark:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.postingPage:
        return PostingPage();
      default:
        return DefaultWidget();
    }
  }
}
