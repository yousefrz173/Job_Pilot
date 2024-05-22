import 'package:jobpilot/presentation/posting_page/posting_page.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'models/seniordesigner_item_model.dart';
import '../home_screen/widgets/seniordesigner_item_widget.dart';
import 'package:jobpilot/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/home_controller.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.v),
              _buildJoinNow(),
              SizedBox(height: 23.v),
              _buildFindYourJob(),
              SizedBox(height: 18.v),
              Text(
                "1b1_recent_job_list".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 16.v),
              _buildGoogleInc(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildJoinNow() {
    return Container(
      height: 239.v,
      width: 329.h,
      margin: EdgeInsets.only(left: 3.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 17.v),
              child: Text(
                "msg_hello_orlando_diggs".tr,
                style: CustomTextStyles.titleLargeGray90002,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 181.v,
              width: 329.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 17.h,
                        vertical: 23.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1b1_50_off".tr,
                            style:
                                CustomTextStyles.titleMediumOnPrimaryContainer,
                          ),
                          Text(
                            "msg_take_any_courses".tr,
                            style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                          ),
                          SizedBox(height: 15.v),
                          CustomElevatedButton(
                            height: 26.v,
                            width: 90.h,
                            text: "lbl_join_now".tr,
                            buttonStyle: CustomButtonStyles.fillOrange,
                            buttonTextStyle: CustomTextStyles
                                .labelLargeOnPrimaryContainerMedium,
                          ),
                          SizedBox(height: 7.v),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img52521919Mento,
                    height: 181.v,
                    width: 169.h,
                    radius: BorderRadius.circular(
                      6.h,
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlay36x36,
            height: 36.adaptSize,
            width: 36.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 7.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFindYourJob() {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 6.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1b1_find_your_job".tr,
                style: CustomTextStyles.titleMediumBlack900,
              ),
              SizedBox(height: 31.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 36.h,
                  vertical: 37.v,
                ),
                decoration: AppDecoration.fillLightBlue.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgHeadhunting1,
                      height: 34.adaptSize,
                      width: 34.adaptSize,
                    ),
                    SizedBox(height: 13.v),
                    Text(
                      "1b1_44_5k".tr,
                      style: CustomTextStyles.titleMediumGray90002,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "1b1_remote_job".tr,
                      style: CustomTextStyles.bodyMediumDMSansGray90002,
                    ),
                    SizedBox(height: 2.v),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 52.v),
            child: Column(
              children: [
                _buildFortyFive(
                  k: "1b1_66_8k".tr,
                  partTime: "lbl_full_time".tr,
                ),
                SizedBox(height: 20.v),
                _buildFortyFive(
                  k: "1b1_38_9k".tr,
                  partTime: "lbl_part_time".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogleInc() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineIndigoD.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillDeepPurple,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVector,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_product_designer".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 2.v),
                      SizedBox(
                        width: 152.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_google_inc".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            Container(
                              height: 2.adaptSize,
                              width: 2.adaptSize,
                              margin: EdgeInsets.only(
                                top: 8.v,
                                bottom: 6.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray70001,
                                borderRadius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                            ),
                            Text(
                              "lbl_california_usa".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmark,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 15.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_15k".tr,
                    style: CustomTextStyles.titleSmall0penSansff150b3d,
                  ),
                  TextSpan(
                    text: "1b12".tr,
                    style: CustomTextStyles.labelLargeOpenSansffa9a5b8,
                  ),
                  TextSpan(
                    text: "lbl_mo".tr,
                    style: CustomTextStyles.bodySmall0penSansffa9a5b8,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                controller
                    .homeModelObj.value.seniordesignerItemList.value.length,
                (index) {
                  SeniordesignerItemModel model = controller
                      .homeModelObj.value.seniordesignerItemList.value[index];

                  return SeniordesignerItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
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

  /// Common widget
  Widget _buildFortyFive({
    required String k,
    required String partTime,
  }) {
    return Container(
      width: 156.h,
      padding: EdgeInsets.symmetric(
        horizontal: 43.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fill0range100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              k,
              style: CustomTextStyles.titleMediumGray90002.copyWith(
                color: appTheme.gray90002,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            partTime,
            style: CustomTextStyles.bodyMediumDMSansGray90002.copyWith(
              color: appTheme.gray90002,
            ),
          ),
        ],
      ),
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
