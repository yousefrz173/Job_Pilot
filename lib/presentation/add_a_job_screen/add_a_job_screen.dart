import 'widgets/addajob_item_widget.dart';
import 'models/addajob_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/add_a_job_controller.dart'; // ignore_for_file: must_be_immutable

class AddAJobScreen extends GetWidget<AddAJobController> {
  const AddAJobScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 30.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildClose(),
              SizedBox(height: 41.v),
              Text(
                "lbl_add_a_job".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 29.v),
              _buildAddAJob()
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClose() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgCloseGray90003,
          height: 24.adaptSize,
          width: 24.adaptSize,
          onTap: () {
            onTapImgClose();
          },
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 3.v,
          ),
          child: Text(
            "lbl_post".tr,
            style: CustomTextStyles.labelLargeOrange400,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildAddAJob() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount:
            controller.addAJobModelObj.value.addajobItemList.value.length,
        itemBuilder: (context, index) {
          AddajobItemModel model =
              controller.addAJobModelObj.value.addajobItemList.value[index];
          return AddajobItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}
