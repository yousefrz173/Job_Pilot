import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import '../login_screen/binding/login_binding.dart';
import '../login_screen/login_screen.dart';
import 'package:jobpilot/widgets/custom_image_picker.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_checkbox_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/sign_up_controller.dart';
import 'package:jobpilot/authHelper/googleauth/google_auth_helper.dart'; // ignore_for_file: must_be_immutable

class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key})
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
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            right: 28.h,
            left: 28.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "msg_create_an_account".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 12.v),
                Container(
                  width: 285.h,
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Text(
                    "msg_lorem_ipsum_dolor".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.60,
                    ),
                  ),
                ),
                SizedBox(height: 31.v),
                if (controller.role != UserRole.company) ...[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_full_name".tr,
                      style: CustomTextStyles.labelLargeGray90002,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildFullName(textController: controller.fullNameController),
                  SizedBox(height: 31.v),
                ],
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    controller.nameUsernameLabel.value.tr,
                    style: CustomTextStyles.labelLargeGray90002,
                  ),
                ),
                SizedBox(height: 10.v),
                _buildFullName(
                    textController: controller.nameUsernameController),
                if (controller.role == UserRole.company) ...[
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_epmloyee_number".tr,
                      style: CustomTextStyles.labelLargeGray90002,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildFullName(
                      textController: controller.employeeNumberController),
                ],
                SizedBox(height: 13.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_email".tr,
                    style: CustomTextStyles.labelLargeGray90002,
                  ),
                ),
                SizedBox(height: 10.v),
                _buildEmail(),
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_password".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 10.v),
                _buildPassword(),
                SizedBox(height: 20.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    controller.dateBirthEstablishmentLabel.value.tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                buildDatePickerField(context, controller,
                    controller.dateBirthEstablishmentLabel.value),
                SizedBox(height: 20.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_picture".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 10.v),
                _buildImagePicker(),
                SizedBox(height: 20.v),
                _buildSignUp(),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_already_have_an".tr,
                          style: CustomTextStyles.bodySmal10penSansff514a6b,
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.off(
                                  () => LoginScreen(),
                                  binding: LoginBinding(),
                                ),
                          text: "lbl_sign_in".tr,
                          style: CustomTextStyles.bodySmal10penSansff333030
                              .copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

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
  Widget _buildFullName({TextEditingController? textController}) {
    return CustomTextFormField(
      textStyle: TextStyle(
        color: Colors.black,
      ),
      controller: textController,
      hintText: "lbl_brandone_louis".tr,
      hintStyle: CustomTextStyles.bodySmallGray90099,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 17.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      textStyle: TextStyle(
        color: Colors.black,
      ),
      hintText: "msg_brandonelouis_gmail_com".tr,
      hintStyle: CustomTextStyles.bodySmallGray90099,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 17.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(
      () => CustomTextFormField(
        textStyle: TextStyle(
          color: Colors.black,
        ),
        controller: controller.passwordController,
        hintText: "type a strong password",
        hintStyle: CustomTextStyles.bodySmallGray90099,
        textInputAction: TextInputAction.done,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword.value = !controller.isShowPassword.value;
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 22.h, 13.v),
            child: Icon(
              controller.isShowPassword.value
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 50.v,
        ),
        obscureText: controller.isShowPassword.value,
      ),
    );
  }

  // Helper function to create a date picker field
  Widget buildDatePickerField(
      BuildContext context, SignUpController controller, String label) {
    return GestureDetector(
      onTap: () => controller.pickDate(context),
      child: AbsorbPointer(
        child: Obx(
          () => TextField(
            decoration: InputDecoration(
              hintText: 'Choose a date',
              suffixIcon: Icon(Icons.calendar_today),
            ),
            controller: TextEditingController(
              text: controller.selectedDate.value
                  .toLocal()
                  .toString()
                  .split(' ')[0],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberme() {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => CustomCheckboxButton(
              text: "lbl_remember_me".tr,
              value: controller.rememberme.value,
              padding: EdgeInsets.symmetric(vertical: 3.v),
              textStyle: CustomTextStyles.bodySmallBluegray30003,
              onChange: (value) {
                controller.rememberme.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 2.v,
            ),
            child: Text(
              "msg_forgot_password".tr,
              style: CustomTextStyles.bodySmallGray90002,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
      text: "lbl_sign_up".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 26.h,
        right: 27.h,
      ),
      onPressed: () => controller.register(),
    );
  }

  /// Section Widget
  Widget _buildSignUpWithGoogle() {
    return CustomElevatedButton(
      text: "msg_sign_up_with_google".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 27.h,
        right: 28.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle220x15,
          height: 20.v,
          width: 15.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillDeepPurple,
      onPressed: () {
        onTapSignUpWithGoogle();
      },
    );
  }

  onTapSignUpWithGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }

  Widget _buildImagePicker() {
    return GetBuilder<SignUpController>(
      builder: (controller) {
        return CustomImagePicker(
            onImagePick: controller.pickImage,
            selectedImage: controller.selectedImage.value,
            imageName: controller.selectedImage.value?.name ?? '');
      },
    );
    // CustomImagePicker(
    //     onImagePick: controller.pickImage,
    //     selectedImage: controller.selectedImage.value,
    //     imageName: controller.selectedImage.value!.name);

    // return InkWell(
    //   onTap: controller.pickImage,
    //   child: Card(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(12.h),
    //     ),
    //     elevation: 4,
    //     child: Padding(
    //       padding: EdgeInsets.only(
    //           // right: 100.h,
    //           // left: 100.h,
    //           ),
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Container(
    //             alignment: Alignment.topLeft,
    //             height: 70.h,
    //             width: 70.h,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12.h),
    //               border: Border.all(color: Colors.grey.shade300),
    //               color: Colors.grey.shade200,
    //             ),
    //             child: Obx(() {
    //               if (controller.selectedImage.value != null) {
    //                 return ClipRRect(
    //                   borderRadius: BorderRadius.circular(12.h),
    //                   child: Image.file(
    //                     File(controller.selectedImage.value!.path),
    //                     fit: BoxFit.fill,
    //                   ),
    //                 );
    //               } else {
    //                 return Center(
    //                   child: Icon(
    //                     Icons.image,
    //                     color: Colors.grey,
    //                     size: 50.h,
    //                   ),
    //                 );
    //               }
    //             }),
    //           ),
    //           SizedBox(height: 10.v),
    //           Obx(
    //             () => Text(
    //               overflow: TextOverflow.fade,
    //               controller.imageName,
    //               style: TextStyle(fontSize: 16.fSize, color: Colors.black54),
    //             ),
    //           ),
    //           SizedBox(height: 10.v),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
