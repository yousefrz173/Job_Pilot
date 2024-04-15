import '../models/pm_item_model.dart';
import '../controller/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class PmItemWidget extends StatelessWidget {
  PmItemWidget(
    this.pmItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  PmItemModel pmItemModelObj;

  var controller = Get.find<MessageController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: pmItemModelObj.pm!.value,
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
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  pmItemModelObj.meganRapinoe!.value,
                  style: CustomTextStyles.titleSmallGray90001,
                ),
              ),
              SizedBox(height: 4.v),
              Obx(
                () => Text(
                  pmItemModelObj.iSawTheUIUX!.value,
                  style: CustomTextStyles.bodySmallGray500,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 25.v,
          ),
          child: Obx(
            () => Text(
              pmItemModelObj.time!.value,
              style: CustomTextStyles.bodySmallBluegray30003,
            ),
          ),
        ),
      ],
    );
  }
}
