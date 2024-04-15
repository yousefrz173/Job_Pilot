import '../models/notificationstwo_item_model.dart';
import '../controller/notifications_two_controller.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class NotificationstwoItemWidget extends StatelessWidget {
  NotificationstwoItemWidget(
    this.notificationstwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  NotificationstwoItemModel notificationstwoItemModelObj;

  var controller = Get.find<NotificationsTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  child: CustomImageView(
                    imagePath: notificationstwoItemModelObj.logoGoogle!.value,
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
          SizedBox(height: 16.v),
          Obx(
            () => Text(
              notificationstwoItemModelObj.applicationSent!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            width: 247.h,
            margin: EdgeInsets.only(right: 48.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_applications_for7".tr,
                    style: CustomTextStyles.bodySmal10penSansff514a6b,
                  ),
                  TextSpan(
                    text: "lbl_google_inc".tr,
                    style: CustomTextStyles.labelLargeff150b3d,
                  ),
                  TextSpan(
                    text: "msg_have_entered_for".tr,
                    style: CustomTextStyles.bodySmal10penSansff514a6b,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildApplicationDetails(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 12.v,
                    bottom: 5.v,
                  ),
                  child: Obx(
                    () => Text(
                      notificationstwoItemModelObj.duration!.value,
                      style: CustomTextStyles.bodySmallBluegray40001,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///Section Widget
  Widget _buildApplicationDetails() {
    return CustomElevatedButton(
      height: 32.v,
      width: 143.h,
      text: "msg_application_details".tr,
      buttonTextStyle: CustomTextStyles.bodySmallOnPrimaryContainer,
    );
  }
}
