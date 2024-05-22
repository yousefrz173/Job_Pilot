import 'widgets/jobs_item_widget.dart';
import 'models/jobs_item_model.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/jobs_controller.dart';
import 'models/jobs_model.dart';

class JobsPage extends StatelessWidget {
  JobsPage({Key? key})
      : super(
          key: key,
        );

  JobsController controller = Get.put(JobsController(JobsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      _buildJobs(),
                      SizedBox(height: 33.v),
                      _buildGoogleInc(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJobs() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: controller.jobsModelObj.value.jobsItemList.value.length,
        itemBuilder: (context, index) {
          JobsItemModel model =
              controller.jobsModelObj.value.jobsItemList.value[index];
          return JobsItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogleInc() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
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
          SizedBox(height: 5.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(7.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGoogle220x15,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBookmark,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 15.v),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Text(
            "lbl_graphic_dsigner".tr,
            style: CustomTextStyles.titleSmallOpenSansGray90001,
          ),
          SizedBox(height: 3.v),
          Row(
            children: [
              Text(
                "lb1_google_inc".tr,
                style: CustomTextStyles.bodySmall0penSans,
              ),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 9.v,
                  bottom: 5.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.blueGray70001,
                  borderRadius: BorderRadius.circular(
                    1.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "lbl_california_usa".tr,
                  style: CustomTextStyles.bodySmall0penSans,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 79.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Text(
                  "lbl_design".tr,
                  style: CustomTextStyles.bodySmall0penSansBluegray30003_1,
                ),
              ),
              Container(
                width: 82.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Text(
                  "lbl_full_time2".tr,
                  style: CustomTextStyles.bodySmallOpenSans10,
                ),
              ),
              Container(
                width: 114.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Text(
                  "lbl_senior_designer".tr,
                  style: CustomTextStyles.bodySmallOpenSans10,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "1b1_25_minute_ago".tr,
                  style: CustomTextStyles.bodySmal10penSansBluegray40001,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_15k".tr,
                      style: CustomTextStyles.titleSmallOpenSansff000000,
                    ),
                    TextSpan(
                      text: "1b12".tr,
                      style: CustomTextStyles.labelLargeOpenSansffa9a5b8,
                    ),
                    TextSpan(
                      text: "lbl_mo".tr,
                      style: CustomTextStyles.bodySmal10penSansff514a6b,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
