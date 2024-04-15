import '../models/language_item_model.dart';
import '../controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class LanguageItemWidget extends StatelessWidget {
  LanguageItemWidget(
    this.languageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  LanguageItemModel languageItemModelObj;

  var controller = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: languageItemModelObj.circleImage!.value,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 7.v,
                  bottom: 6.v,
                ),
                child: Obx(
                  () => Text(
                    languageItemModelObj.indonesianFirst!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 3.v),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Obx(
            () => Text(
              languageItemModelObj.oralLevelTen!.value,
              style: CustomTextStyles.bodySmallBluegray30003,
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              languageItemModelObj.writtenLevel!.value,
              style: CustomTextStyles.bodySmallBluegray30003,
            ),
          ),
        ],
      ),
    );
  }
}
