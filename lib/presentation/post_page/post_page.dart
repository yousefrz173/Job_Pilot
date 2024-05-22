import 'package:jobpilot/widgets/custom_radio_button.dart';
import 'package:readmore/readmore.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/post_controller.dart';
import 'models/post_model.dart';

class PostPage extends StatelessWidget {
  PostPage({Key? key})
      : super(
          key: key,
        );
  PostController controller = Get.put(PostController(PostModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 13.v),
              _buildArnoldLeonardo(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArnoldLeonardo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGoogle220x15,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "lbl_google_inc2".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Obx(
                        () => CustomRadioButton(
                          text: "lbl_21_minuts_ago".tr,
                          value: "lbl_21_minuts_ago".tr,
                          groupValue: controller.radioGroup.value,
                          textStyle:
                              CustomTextStyles.bodySmallOpenSansGray60002,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 286.h,
              child: ReadMoreText(
                "msg_lorem_ipsum_dolor2".tr,
                trimLines: 4,
                colorClickableText: appTheme.orange400,
                trimMode: TrimMode.Line,
                trimCollapsedText: "lbl_read_more".tr,
                moreStyle: CustomTextStyles.bodySmall0penSans,
                lessStyle: CustomTextStyles.bodySmall0penSans,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            height: 166.v,
            width: 314.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage6,
                  height: 166.v,
                  width: 314.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomIconButton(
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUserGray90002,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg_what_s_it_like_to".tr,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_youtube_com".tr,
              style: CustomTextStyles.bodySmallGray9000410,
            ),
          ),
          SizedBox(height: 59.v),
        ],
      ),
    );
  }
}
