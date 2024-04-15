import '../models/specialization_item_model.dart';
import '../controller/specialization_controller.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class SpecializationItemWidget extends StatelessWidget {
  SpecializationItemWidget(
    this.specializationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  SpecializationItemModel specializationItemModelObj;

  var controller = Get.find<SpecializationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 46.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fill0range100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => CustomIconButton(
              height: 67.adaptSize,
              width: 67.adaptSize,
              padding: EdgeInsets.all(18.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
              child: CustomImageView(
                imagePath: specializationItemModelObj.thumbsUp!.value,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Text(
              specializationItemModelObj.design!.value,
              style: CustomTextStyles.titleSmallOnPrimaryContainer_2,
            ),
          ),
          SizedBox(height: 8.v),
          Obx(
            () => Text(
              specializationItemModelObj.jobsCounter!.value,
              style: CustomTextStyles.bodySmallOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
