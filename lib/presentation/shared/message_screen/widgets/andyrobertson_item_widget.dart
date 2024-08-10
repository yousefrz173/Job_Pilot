import 'package:flutter/widgets.dart';

import '../models/andyrobertson_item_model.dart';
import '../controller/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/my_app_export.dart';

// ignore: must_be_immutable
class AndyrobertsonItemWidget extends StatelessWidget {
  AndyrobertsonItemWidget(
    this.andyrobertsonItemModelObj,
    this.onTap, {
    super.key,
  });

  AndyrobertsonItemModel andyrobertsonItemModelObj;
  VoidCallback? onTap;

  var controller = Get.find<MessageController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: andyrobertsonItemModelObj.andyRobertson!.value,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 6.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    andyrobertsonItemModelObj.andyRobertson1!.value,
                    style: CustomTextStyles.titleSmallGray90001,
                  ),
                ),
                SizedBox(height: 5.v),
                Obx(
                  () => Text(
                    andyrobertsonItemModelObj.ohYesPleaseSend!.value,
                    style: CustomTextStyles.labelLargeBluegray70001,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 29.h,
              top: 8.v,
              bottom: 5.v,
            ),
            child: Column(
              children: [
                Obx(
                  () => Text(
                    andyrobertsonItemModelObj.distance!.value,
                    style: CustomTextStyles.bodySmallBluegray30003,
                  ),
                ),
                SizedBox(height: 6.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 14.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillorange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Obx(
                      () => Text(
                        andyrobertsonItemModelObj.notifNewMessage!.value,
                        style: CustomTextStyles.labelSmallOnPrimaryContainer,
                      ),
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
}
