import 'package:jobpilot/presentation/posting_page/posting_page.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:jobpilot/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/no_savings_controller.dart';

// ignore_for_file: must_be_immutable
class NoSavingsScreen extends GetWidget<NoSavingsController> {
  const NoSavingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 107.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 37.v),
              Text(
                "lbl_no_savings".tr,
                style: CustomTextStyles.titleMediumOpenSansGray90001,
              ),
              SizedBox(height: 18.v),
              SizedBox(
                width: 212.h,
                child: Text(
                  "msg_you_don_t_have_any".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmall0penSans,
                ),
              ),
              SizedBox(height: 50.v),
              CustomImageView(
                imagePath: ImageConstant.imgIllustrationIndigoA200207x219,
                height: 207.v,
                width: 219.h,
                alignment: Alignment.centerRight,
              ),
              Spacer(),
              CustomElevatedButton(
                width: 213.h,
                text: "lbl_find_a_job".tr.toUpperCase(),
              ),
            ],
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
