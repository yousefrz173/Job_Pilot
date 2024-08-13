import '../models/specialization_item_model.dart';
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fill0range100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => CustomIconButton(
                height: 37.adaptSize,
                width: 37.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
                child: CustomImageView(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  fit: BoxFit.fill,
                  imagePath: specializationItemModelObj.thumbsUp!.value,
                ),
              ),
            ),
            SizedBox(height: 19.v),
            Obx(
              () => Text(
                specializationItemModelObj.design!.value,
                style: CustomTextStyles.titleSmallOnPrimaryContainer_2,
                overflow: TextOverflow.ellipsis,
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
      ),
    );
  }
}
