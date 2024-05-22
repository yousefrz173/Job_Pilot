import '../models/posting_item_model.dart';
import '../controller/posting_controller.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class PostingItemWidget extends StatelessWidget {
  PostingItemWidget(
    this.postingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  PostingItemModel postingItemModelObj;

  var controller = Get.find<PostingController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            height: 40.v,
            text: "lbl_posting".tr,
            margin: EdgeInsets.only(right: 5.h),
            buttonStyle: CustomButtonStyles.fillDeepPurple,
            buttonTextStyle: CustomTextStyles.titleSmallPrimary,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            height: 40.v,
            text: "lbl_my_connection".tr,
            margin: EdgeInsets.only(left: 5.h),
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer_2,
          ),
        ),
      ],
    );
  }
}
