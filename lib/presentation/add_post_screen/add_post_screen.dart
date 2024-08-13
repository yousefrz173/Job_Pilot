import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/add_post_controller.dart';

// ignore_for_file: must_be_immutable
class AddPostScreen extends GetWidget<AddPostController> {
  const AddPostScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 23.v,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "lbl_add_post".tr,
                style: CustomTextStyles.titleMediumGray90001,
              ),
            ),
            SizedBox(height: 37.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    top: 11.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_orlando_diggs".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        "lbl_california_usa".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 28.v),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.v),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    top: 11.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "lbl_post_title".tr,
                          style: CustomTextStyles.labelLargeOpenSans,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: CustomTextFormField(
                          width: 320.h,
                          textStyle: TextStyle(
                            color: appTheme.black900,
                          ),
                          controller: controller.thirtyNineController,
                          hintText: "msg_write_the_title".tr,
                          hintStyle: CustomTextStyles.bodySmallBluegray30003,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 26.v),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    top: 11.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "lbl_description".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: CustomTextFormField(
                          width: 320.h,
                          controller: controller.fortyController,
                          hintText: "msg_what_do_you_want".tr,
                          hintStyle: CustomTextStyles.bodySmallBluegray30003,
                          textInputAction: TextInputAction.done,
                          maxLines: 9,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 18.v,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.v),
          ]),
        ),
        bottomNavigationBar: _buildMenuBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: appTheme.gray50,
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_post".tr,
          margin: EdgeInsets.fromLTRB(20.h, 20.v, 20.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMenuBar() {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 33.v,
      ),
      decoration: AppDecoration.outlineBluegray30001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserOrangeA20001,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCloseOrange40024x24,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 20.h),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Text(
              "lbl_add_hashtag".tr,
              style: CustomTextStyles.labelLargeOpenSansOrange400,
            ),
          ),
        ],
      ),
    );
  }
}
