import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'widgets/language_item_widget.dart';
import 'models/language_item_model.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/language_controller.dart';

// ignore_for_file: must_be_immutable
class LanguageScreen extends GetWidget<LanguageController> {
  const LanguageScreen({Key? key})
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
            horizontal: 20.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              _buildLanguage(),
              SizedBox(height: 28.v),
              _buildLanguage1(),
              Spacer(),
              SizedBox(height: 67.v),
              CustomElevatedButton(
                width: 213.h,
                text: "lbl_save".tr.toUpperCase(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 374.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1Gray90003,
        margin: EdgeInsets.fromLTRB(22.h, 28.v, 334.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "1b1_language".tr,
          style: theme.textTheme.titleMedium,
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            "1bl_add".tr,
            style: CustomTextStyles.titleSmallOnPrimary,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgFloatingIconDeepPurpleA700,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLanguage1() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 15.v,
          );
        },
        itemCount:
            controller.languageModelObj.value.languageItemList.value.length,
        itemBuilder: (context, index) {
          LanguageItemModel model =
              controller.languageModelObj.value.languageItemList.value[index];
          return LanguageItemWidget(
            model,
          );
        },
      ),
    );
  }
}
