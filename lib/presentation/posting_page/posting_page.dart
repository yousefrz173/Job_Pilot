import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'widgets/posting_item_widget.dart';
import 'models/posting_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/posting_controller.dart';
import 'models/posting_model.dart';

class PostingPage extends StatelessWidget {
  PostingPage({Key? key})
      : super(
          key: key,
        );
  PostingController controller = Get.put(PostingController(PostingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 19.h),
              child: Column(
                children: [
                  _buildArnoldLeonardo(),
                  // SizedBox(height: 34.v),
                  // _buildPosting(),
                  SizedBox(height: 34.v),
                  _buildArnoldLeonardo(),
                  SizedBox(height: 34.v),
                  _buildArnoldLeonardo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1Gray90002,
        margin: EdgeInsets.fromLTRB(30.h, 27.v, 327.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildArnoldLeonardo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse95,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "lbl_arnold_leonardo".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          Container(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.h,
                              vertical: 2.v,
                            ),
                            decoration:
                                AppDecoration.outlineBluegray30003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVector232,
                              height: 6.v,
                              width: 2.h,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "lbl_21_minuts_ago".tr,
                              style: CustomTextStyles.bodySmallBluegray3000310,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Container(
            width: 239.h,
            margin: EdgeInsets.only(
              left: 20.h,
              right: 75.h,
            ),
            child: Text(
              "msg_what_are_the_characteristics".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            width: 281.h,
            margin: EdgeInsets.only(
              left: 20.h,
              right: 33.h,
            ),
            child: Text(
              "msg_because_i_always".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 33.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 26.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.fillDeeppurpleA700.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 3.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "lbl_12".tr,
                    style: CustomTextStyles.bodySmal10penSansGray90004,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmarkGray60001,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 26.h),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 3.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "lbl_10".tr,
                    style: CustomTextStyles.bodySmal10penSansBluegray40001,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgQuestion,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5.h, 3.v, 5.h, 6.v),
                  child: Text(
                    "lbl_22".tr,
                    style: CustomTextStyles.bodySmal10penSansBluegray40001,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPosting() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 11.v,
            );
          },
          itemCount:
              controller.postingModelObj.value.postingItemList.value.length,
          itemBuilder: (context, index) {
            PostingItemModel model =
                controller.postingModelObj.value.postingItemList.value[index];
            return PostingItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
