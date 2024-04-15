import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:jobpilot/presentation/posting_page/posting_page.dart';
import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:jobpilot/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/profile_controller.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key})
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
              _buildSixtyThree(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    SizedBox(height: 20.v),
                    _buildWorkExperience(
                      thumbsUp: ImageConstant.imgSettingsOrange400,
                      workExperience: "1bl_about_me".tr,
                    ),
                    SizedBox(height: 10.v),
                    _buildWorkExperience(
                      thumbsUp: ImageConstant.imgThumbsUpOrange40024x24,
                      workExperience: "1bl_work_experience".tr,
                    ),
                    SizedBox(height: 10.v),
                    _buildWorkExperience(
                      thumbsUp: ImageConstant.imgSettingsOrange40026x24,
                      workExperience: "1bl_education".tr,
                    ),
                    SizedBox(height: 10.v),
                    _buildWorkExperience(
                      thumbsUp: ImageConstant.imgClose24x24,
                      workExperience: "1bl_skill".tr,
                    ),
                    SizedBox(height: 10.v),
                    _buildLanguage(),
                    SizedBox(height: 10.v),
                    _buildAppreciation(),
                    SizedBox(height: 10.v),
                    _buildResume(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyThree() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 21.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup77,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.v),
          CustomAppBar(
            height: 24.v,
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgQuestionOnprimarycontainer,
                margin: EdgeInsets.only(left: 23.h),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgSearch,
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 23.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 76.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 27.h),
              child: Text(
                "lbl_california_usa".tr,
                style: CustomTextStyles.bodySmallOnPrimaryContainer,
              ),
            ),
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              right: 13.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 7.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "1b1_120k".tr,
                          style: CustomTextStyles.titleSmallffffffff,
                        ),
                        TextSpan(
                          text: "1bl_follower".tr,
                          style: CustomTextStyles.bodySmallffffffff,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 21.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "1b1_23k".tr,
                          style: CustomTextStyles.titleSmallffffffff,
                        ),
                        TextSpan(
                          text: "1bl_following".tr,
                          style: CustomTextStyles.bodySmallffffffff,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  height: 30.v,
                  width: 120.h,
                  text: "lbl_edit_profile".tr,
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEditOnprimarycontainer,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                  buttonTextStyle: CustomTextStyles.bodySmallOnPrimaryContainer,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguage() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.adaptSize,
            width: 20.adaptSize,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 11.adaptSize,
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    decoration: AppDecoration.outlineOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder3,
                    ),
                    child: Text(
                      "lbl_a".tr,
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle166,
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    bottom: 2.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle167,
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 2.v,
                    right: 2.h,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 11.adaptSize,
                    width: 11.adaptSize,
                    padding: EdgeInsets.all(1.h),
                    decoration: AppDecoration.outlineOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder3,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorOrange400,
                      height: 6.v,
                      width: 5.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 3.v,
            ),
            child: Text(
              "1b1_language".tr,
              style: CustomTextStyles.titleSmallGray90001,
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgClose1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAppreciation() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 19.v,
            width: 17.h,
            margin: EdgeInsets.only(
              left: 3.h,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAirplane,
                  height: 9.adaptSize,
                  width: 9.adaptSize,
                  radius: BorderRadius.circular(
                    1.h,
                  ),
                  alignment: Alignment.bottomLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCursor,
                  height: 9.adaptSize,
                  width: 9.adaptSize,
                  radius: BorderRadius.circular(
                    1.h,
                  ),
                  alignment: Alignment.bottomRight,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 1.h,
                      right: 2.h,
                    ),
                    padding: EdgeInsets.all(1.h),
                    decoration: AppDecoration.outlineOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgStar1,
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                      radius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 3.v,
            ),
            child: Text(
              "1b1_appreciation".tr,
              style: CustomTextStyles.titleSmallGray90001,
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgClose1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildResume() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 19.v,
            width: 14.h,
            margin: EdgeInsets.only(
              left: 5.h,
              bottom: 3.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle164,
                  height: 17.v,
                  width: 14.h,
                  radius: BorderRadius.circular(
                    3.h,
                  ),
                  alignment: Alignment.bottomCenter,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      right: 3.h,
                      bottom: 1.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            border: Border.all(
                              color: appTheme.blueGray70002,
                              width: 1.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 1.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse78,
                          height: 3.v,
                          width: 6.h,
                        ),
                        SizedBox(height: 3.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector86,
                          height: 1.v,
                          width: 8.h,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 4.v,
                    width: 8.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                      border: Border.all(
                        color: appTheme.blueGray70002,
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 2.v,
            ),
            child: Text(
              "1bl_resume".tr,
              style: CustomTextStyles.titleSmallOpenSansGray90001,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFloatingIcon,
            height: 24.adaptSize,
            width: 24.adaptSize,
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
  Widget _buildWorkExperience({
    required String thumbsUp,
    required String workExperience,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: thumbsUp,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
            ),
            child: Text(
              workExperience,
              style: CustomTextStyles.titleSmallGray90001.copyWith(
                color: appTheme.gray90001,
              ),
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgClose1,
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
