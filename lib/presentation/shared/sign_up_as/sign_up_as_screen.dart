import 'widgets/signupas_item_widget.dart';
import 'models/signupas_item_model.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import 'controller/sign_up_as_controller.dart'; // ignore_for_file: must_be_immutable

class SignUpAsScreen extends GetWidget<SignUpAsController> {
  const SignUpAsScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appTheme.gray5001,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 30.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 41.v),
                Text(
                  "lbl_sign_up_as".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 110.v),
                _buildSignUpAs()
              ],
            ),
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
          imagePath: ImageConstant.imgArrow1BlueGray70001,
          height: 24.adaptSize,
          // width: 24.adaptSize,
          onTap: () {
            onTapImgClose();
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSignUpAs() {
    return Obx(
      () => ListView.separated(
        // physics: ScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 40.v,
          );
        },
        itemCount:
            controller.signUpAsModelObj.value.signUpAsItemList.value.length,
        itemBuilder: (context, index) {
          SignUpAsItemModel model =
              controller.signUpAsModelObj.value.signUpAsItemList.value[index];
          return SignUpAsItemWidget(
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
