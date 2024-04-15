import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/app_bar/appbar_subtitle_two.dart';
import 'widgets/editaddajob_item_widget.dart';
import 'models/editaddajob_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/edit_add_a_job_controller.dart'; // ignore_for_file: must_be_immutable

class EditAddAJobScreen extends GetWidget<EditAddAJobController> {
  const EditAddAJobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 25.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1bl_add_a_job".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 29.v),
              _buildEditAddAJob()
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCloseGray90003,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 16.v,
        ),
        onTap: () {
          onTapClose();
        },
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_post".tr,
          margin: EdgeInsets.fromLTRB(20.h, 20.v, 20.h, 19.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildEditAddAJob() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0.v),
            child: SizedBox(
              width: 295.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.gray30001,
              ),
            ),
          );
        },
        itemCount: controller
            .editAddAJobModelObj.value.editaddajobItemList.value.length,
        itemBuilder: (context, index) {
          EditaddajobItemModel model = controller
              .editAddAJobModelObj.value.editaddajobItemList.value[index];
          return EditaddajobItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapClose() {
    Get.back();
  }
}
