import '../models/notificationsone_item_model.dart';
import '../controller/notifications_one_controller.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:jobpilot/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsoneItemWidget extends StatelessWidget {
  NotificationsoneItemWidget(
    this.notificationsoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  NotificationsoneItemModel notificationsoneItemModelObj;

  var controller = Get.find<NotificationsOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 63.v),
            child: Obx(
              () => CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(7.h),
                child: CustomImageView(
                  imagePath: notificationsoneItemModelObj.logoGoogle!.value,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Obx(
                          () => Text(
                            notificationsoneItemModelObj.applicationSent!.value,
                            style: CustomTextStyles.titleSmallGray90001,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgNotificationBlueGray70001,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 182.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_applications_for7".tr,
                            style: CustomTextStyles.bodySmallff514a6b,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildApplicationDetails(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 9.v,
                          bottom: 8.v,
                        ),
                        child: Obx(
                          () => Text(
                            notificationsoneItemModelObj.time!.value,
                            style: CustomTextStyles.bodySmallBluegray3000310,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildApplicationDetails() {
    return CustomOutlinedButton(
      width: 143.h,
      text: "msg_application_details".tr,
      buttonStyle: CustomButtonStyles.outlineGrayTL10,
      buttonTextStyle: CustomTextStyles.bodySmal10penSansGray90004,
    );
  }
}
