import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:jobpilot/presentation/about_us_page/about_us_page.dart';
import 'package:jobpilot/presentation/post_page/post_page.dart';
import 'package:jobpilot/presentation/jobs_page/jobs_page.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/about_us_tab_container_controller.dart';

// ignore_for_file: must_be_immutable
class AboutUsTabContainerScreen
    extends GetWidget<AboutUsTabContainerController> {
  const AboutUsTabContainerScreen({Key? key})
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
            children: [
              SizedBox(height: 30.v),
              _buildUIUXDesigner(),
              SizedBox(height: 16.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildFollow(),
                      SizedBox(height: 31.v),
                      _buildTabview(),
                      SizedBox(
                        height: 885.v,
                        child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            AboutUsPage(),
                            PostPage(),
                            JobsPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUIUXDesigner() {
    return SizedBox(
      height: 192.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 177.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 29.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.fillGray10001,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 15.v),
                          Text(
                            "lbl_ui_ux_designer".tr,
                            style: CustomTextStyles.titleMediumGray90002,
                          ),
                          SizedBox(height: 14.v),
                          Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "1b1_google".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                Container(
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 22.h,
                                    top: 9.v,
                                    bottom: 5.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.gray90002,
                                    borderRadius: BorderRadius.circular(
                                      3.h,
                                    ),
                                  ),
                                ),
                                Spacer(
                                  flex: 50,
                                ),
                                Text(
                                  "lbl_california".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                Spacer(
                                  flex: 50,
                                ),
                                Container(
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                    top: 9.v,
                                    bottom: 5.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.gray90002,
                                    borderRadius: BorderRadius.circular(
                                      3.h,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text(
                                    "1b1_1_day_ago".tr,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 84.adaptSize,
                      width: 84.adaptSize,
                      padding: EdgeInsets.all(14.h),
                      decoration: AppDecoration.fillLightBlue.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder41,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGoogle220x15,
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomAppBar(
            height: 24.v,
            leadingWidth: 44.h,
            leading: Container(
              height: 24.v,
              width: 27.h,
              margin: EdgeInsets.only(left: 17.h),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownGray90002,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(right: 3.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(left: 3.h),
                  ),
                ],
              ),
            ),
            actions: [
              Container(
                height: 24.v,
                width: 29.h,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgNotificationGray90002,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 5.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgNotification,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(left: 5.h),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            height: 40.v,
            width: 159.h,
            text: "lbl_follow".tr,
            buttonStyle: CustomButtonStyles.fillDeepOrange,
            buttonTextStyle: CustomTextStyles.bodySmallRedA200,
          ),
          CustomElevatedButton(
            height: 40.v,
            width: 159.h,
            text: "lbl_visit_website".tr,
            margin: EdgeInsets.only(left: 19.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgLink,
                height: 15.adaptSize,
                width: 15.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillDeepOrange,
            buttonTextStyle: CustomTextStyles.bodySmallRedA200,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 50.v,
      width: 335.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.gray90004,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        ),
        indicatorPadding: EdgeInsets.all(
          5.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.orangeA20001,
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "1b1_about_us".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_post".tr,
            ),
          ),
          Tab(
            child: Text(
              "1b1_jobs".tr,
            ),
          ),
        ],
      ),
    );
  }
}
