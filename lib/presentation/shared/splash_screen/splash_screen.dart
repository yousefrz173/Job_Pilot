import '../login_screen/binding/login_binding.dart';
import '../login_screen/login_screen.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import 'controller/splash_controller.dart'; // ignore_for_file: must_be_immutable

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 9.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 65.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup75,
                height: 330.v,
                width: 311.h,
                margin: EdgeInsets.only(left: 4.h),
              ),
              SizedBox(height: 71.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_find_your".tr,
                      style: theme.textTheme.displayMedium,
                    ),
                    TextSpan(
                      text: "msg_dream_job_here".tr,
                      style: CustomTextStyles.displayMediumfffca34d.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildArrowLeft(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      actions: [
        AppbarSubtitle(
          text: "lbl_jobspot".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 16.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildArrowLeft() {
    return Container(
      height: 97.v,
      width: 320.h,
      margin: EdgeInsets.only(
        left: 29.h,
        right: 26.h,
        bottom: 39.v,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomIconButton(
            height: 60.adaptSize,
            width: 60.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
            ),
            onTap: () => Get.to(
              transition: Transition.fade,
              () => LoginScreen(),
              binding: LoginBinding(),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "msg_explore_all_the".tr,
              style: CustomTextStyles.bodyMediumDMSans,
            ),
          )
        ],
      ),
    );
  }
}
