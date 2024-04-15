import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/choose_job_type_controller.dart';

class ChooseJobTypeBottomsheet extends StatelessWidget {
  ChooseJobTypeBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );
  ChooseJobTypeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.h,
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text(
                  "1b1_job_location".tr,
                  style: CustomTextStyles.titleSmallOpenSansGray90001,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 191.h),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Text(
            "1bl_california_usa".tr,
            style: CustomTextStyles.bodySmall0penSans,
          ),
        ],
      ),
    );
  }
}
