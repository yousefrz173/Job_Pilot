import '../models/myconnection_item_model.dart';
import '../controller/my_connection_controller.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:jobpilot/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class MyconnectionItemWidget extends StatelessWidget {
  MyconnectionItemWidget(
    this.myconnectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyconnectionItemModel myconnectionItemModelObj;

  var controller = Get.find<MyConnectionController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.v),
          Obx(
            () => CustomIconButton(
              height: 46.adaptSize,
              width: 46.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillYellowA,
              child: CustomImageView(
                imagePath: myconnectionItemModelObj.iconButton!.value,
              ),
            ),
          ),
          SizedBox(height: 21.v),
          Obx(
            () => Text(
              myconnectionItemModelObj.googleInc!.value,
              style: CustomTextStyles.titleSmallGray90002,
            ),
          ),
          SizedBox(height: 3.v),
          Obx(
            () => Text(
              myconnectionItemModelObj.distance!.value,
              style: CustomTextStyles.bodySmal10penSansBluegray40001,
            ),
          ),
          SizedBox(height: 14.v),
          _buildFollow(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollow() {
    return CustomOutlinedButton(
      height: 30.v,
      width: 100.h,
      text: "lbl_follow".tr,
    );
  }
}
