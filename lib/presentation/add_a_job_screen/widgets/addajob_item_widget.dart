import '../models/addajob_item_model.dart';
import '../controller/add_a_job_controller.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class AddajobItemWidget extends StatelessWidget {
  AddajobItemWidget(
    this.addajobItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  AddajobItemModel addajobItemModelObj;

  var controller = Get.find<AddAJobController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.v),
            child: Obx(() => Text(
                  addajobItemModelObj.jobPosition!.value,
                  style: CustomTextStyles.titleSmallGray90001,
                )),
          ),
          Obx(
            () => CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(8.h),
              child: CustomImageView(
                imagePath: addajobItemModelObj.close!.value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
