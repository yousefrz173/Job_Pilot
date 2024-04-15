import 'package:jobpilot/presentation/posting_page/posting_page.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:jobpilot/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/no_message_controller.dart';

// ignore_for_file: must_be_immutable
class NoMessageScreen extends GetWidget<NoMessageController> {
  const NoMessageScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 43.v),
              CustomImageView(
                imagePath: ImageConstant.imgIllustrationIndigoA200,
                height: 239.v,
                width: 243.h,
              ),
              SizedBox(height: 44.v),
              Text(
                "1bl_no_message".tr,
                style: CustomTextStyles.titleMediumGray90001,
              ),
              SizedBox(height: 19.v),
              SizedBox(
                width: 232.h,
                child: Text(
                  "msg_you_currently_have".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 75.v),
              CustomElevatedButton(
                width: 213.h,
                text: "msg_create_a_message".tr.toUpperCase(),
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
      case BottomBarEnum.Homebluegray30005:
        return AppRoutes.postingPage;
      case BottomBarEnum.Settings:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Bookmarkbluegray30006:
        return "/";
      case BottomBarEnum.Bookmarkbluegray3000624x24:
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
