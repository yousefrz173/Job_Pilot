import '../models/signupas_item_model.dart';
import '../controller/sign_up_as_controller.dart';
import '../../../../widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../../../../core/my_app_export.dart';

// ignore: must_be_immutable
class SignUpAsItemWidget extends StatelessWidget {
  SignUpAsItemWidget(
    this.signUpAsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  SignUpAsItemModel signUpAsItemModelObj;

  var controller = Get.find<SignUpAsController>();

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
            child: Obx(
              () => Text(
                enumToString(signUpAsItemModelObj.jobPosition!.value),
                style: CustomTextStyles.titleSmallGray90001,
              ),
            ),
          ),
          Obx(
            () => CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(8.h),
              child: CustomImageView(
                imagePath: signUpAsItemModelObj.close!.value,
              ),
              onTap: () {
                controller.to(
                  signUpAsItemModelObj.jobPosition!.value,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
