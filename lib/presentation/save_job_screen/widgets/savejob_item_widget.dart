import '../models/savejob_item_model.dart';
import '../controller/save_job_controller.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class SavejobItemWidget extends StatelessWidget {
  SavejobItemWidget(
    this.savejobItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  SavejobItemModel savejobItemModelObj;

  var controller = Get.find<SaveJobController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineIndigoD.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  child: CustomImageView(
                    imagePath: savejobItemModelObj.logoGoogle!.value,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgNotificationBlueGray70001,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 10.v),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              savejobItemModelObj.uIUXDesigner!.value,
              style: CustomTextStyles.titleSmallGray90003,
            ),
          ),
          SizedBox(height: 2.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Obx(
                () => Text(
                  savejobItemModelObj.googleInc!.value,
                  style: CustomTextStyles.bodySmall0penSans,
                ),
              ),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 8.v,
                  bottom: 7.v,
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
                child: Obx(
                  () => Text(
                    savejobItemModelObj.californiaUSA!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Obx(
                  () => Text(
                    savejobItemModelObj.design!.value,
                    style: CustomTextStyles.bodySmal110,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Obx(
                  () => Text(
                    savejobItemModelObj.fullTime!.value,
                    style: CustomTextStyles.bodySmal110,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Obx(
                  () => Text(
                    savejobItemModelObj.seniorDesigner!.value,
                    style: CustomTextStyles.bodySmal110,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Obx(
                  () => Text(
                    savejobItemModelObj.duration!.value,
                    style: CustomTextStyles.bodySmallBluegray3000310,
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "1b1_15k".tr,
                      style: CustomTextStyles.titleSmallff000000,
                    ),
                    TextSpan(
                      text: "1b12".tr,
                      style: CustomTextStyles.labelLargeffa9a5b8,
                    ),
                    TextSpan(
                      text: "lbl_mo".tr,
                      style: CustomTextStyles.bodySmallffa9a5b8,
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
