import 'package:flutter/widgets.dart';
import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/custom_message_bubble.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/chat_controller.dart';

// ignore_for_file: must_be_immutable
class ChatScreen extends GetWidget<ChatController> {
  const ChatScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildSixtySix(),
                SizedBox(
                  height: 620.v,
                  child: GetBuilder(
                    builder: (ChatController controller) => Chat(
                      messages: controller.messages,
                      onAttachmentPressed: () =>
                          controller.handleAttachmentPressed(context),
                      onMessageTap: controller.handleMessageTap,
                      onPreviewDataFetched: controller.handlePreviewDataFetched,
                      onSendPressed: controller.handleSendPressed,
                      showUserAvatars: true,
                      showUserNames: true,
                      user: controller.user,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: _buildSendMassage(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtySix() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.outlineIndigoD,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 15.v),
          CustomAppBar(
            height: 24.v,
            leadingWidth: 44.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDownBlueGray70001,
              margin: EdgeInsets.only(left: 20.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgNotificationGray700,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
              ),
            ],
          ),
          SizedBox(height: 37.v),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage50x50,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_orlando_diggs".tr,
                        style: CustomTextStyles.titleSmallErrorContainer,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 5.adaptSize,
                            width: 5.adaptSize,
                            margin: EdgeInsets.only(
                              top: 5.v,
                              bottom: 4.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.green500,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "lbl_online".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgCall,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    bottom: 16.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRewindOrange400,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 9.v,
                    bottom: 17.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSendMassage() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 25.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: controller.attachController,
              hintText: "msg_write_your_massage".tr,
              hintStyle: CustomTextStyles.bodySmallBluegray30003,
              textInputAction: TextInputAction.done,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(15.h, 13.v, 20.h, 13.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgAttach,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 50.v,
              ),
              contentPadding: EdgeInsets.only(
                top: 17.v,
                right: 30.h,
                bottom: 17.v,
              ),
              borderDecoration:
                  TextFormFieldStyleHelper.fillOnPrimaryContainerTL10,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.outlineIndigoD,
              child: CustomImageView(
                imagePath: ImageConstant.imgUserOnprimarycontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSixtyNine({
    required String image,
    required String morningCanIHelp,
  }) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 48.v,
      ),
      width: 192.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Opacity(
          //   opacity: 0.1,
          //   child: CustomImageView(
          //     imagePath: image,
          //     height: 48.v,
          //     alignment: Alignment.center,
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.center,
          //   child: Container(
          //     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          //     decoration: BoxDecoration(
          //       color: Color.fromRGBO(19, 1, 96, 1),
          //       borderRadius: BorderRadius.circular(8),
          //     ),
          //     child: Text(
          //       morningCanIHelp,
          //       style: CustomTextStyles.bodyMediumDMSans13.copyWith(
          //         color: appTheme.whiteA700,
          //       ),
          //       overflow: TextOverflow.clip,
          //     ),
          //   ),
          // ),
          MessageBubble(
            message: morningCanIHelp,
            isMe: true,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTime({
    required String time,
    required String checkmark,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          time,
          style: CustomTextStyles.bodySmall0penSansBluegray30003.copyWith(
            color: appTheme.blueGray30003,
          ),
        ),
        CustomImageView(
          imagePath: checkmark,
          height: 9.v,
          margin: EdgeInsets.only(
            left: 5.h,
            bottom: 3.v,
          ),
        ),
      ],
    );
  }
}
