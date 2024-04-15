import '../models/notifications_item_model.dart';
import '../controller/notifications_controller.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(
    this.notificationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationsItemModel notificationsItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 44.v,
            ),
            child: Obx(
              () => CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(7.h),
                child: CustomImageView(
                  imagePath: notificationsItemModelObj.logoGoogle!.value,
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
                  Obx(
                    () => Text(
                      notificationsItemModelObj.applicationSent!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    width: 223.h,
                    margin: EdgeInsets.only(right: 15.h),
                    child: Obx(
                      () => Text(
                        notificationsItemModelObj.applicationsFor!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Obx(
                          () => Text(
                            notificationsItemModelObj.duration!.value,
                            style: CustomTextStyles.bodySmallBluegray3000311,
                          ),
                        ),
                      ),
                      Obx(
                        () => Text(
                          notificationsItemModelObj.delete!.value,
                          style: CustomTextStyles.bodySmallRedA20001,
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
}
