import '../models/editaddajob_item_model.dart';
import '../controller/edit_add_a_job_controller.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class EditaddajobItemWidget extends StatelessWidget {
  EditaddajobItemWidget(
    this.editaddajobItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EditaddajobItemModel editaddajobItemModelObj;

  var controller = Get.find<EditAddAJobController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    editaddajobItemModelObj.jobPosition!.value,
                    style: CustomTextStyles.titleSmallGray90001,
                  ),
                ),
                SizedBox(height: 9.v),
                Obx(
                  () => Text(
                    editaddajobItemModelObj.administrativeAssistant!.value,
                    style: CustomTextStyles.bodySmall0penSans,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 25.v),
          ),
        ],
      ),
    );
  }
}
