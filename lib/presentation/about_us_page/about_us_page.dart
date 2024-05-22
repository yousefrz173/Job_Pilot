import 'widgets/aboutus_item_widget.dart';
import 'models/aboutus_item_model.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/about_us_controller.dart';
import 'models/about_us_model.dart';

// ignore_for_file: must_be_immutable
class AboutUsPage extends StatelessWidget {
  AboutUsPage({Key? key})
      : super(
          key: key,
        );
  AboutUsController controller = Get.put(AboutUsController(AboutUsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 12.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_about_company".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Container(
                      width: 320.h,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        right: 35.h,
                      ),
                      child: Text(
                        "msg_sed_ut_perspiciatis3".tr,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Container(
                      width: 305.h,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        right: 50.h,
                      ),
                      child: Text(
                        "msg_at_vero_eos_et_accusamus".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_website".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    GestureDetector(
                      onTap: () {
                        onTapTxtWeburl();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "msg_https_www_google_com".tr,
                          style: CustomTextStyles.bodySmall0range400,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_industry".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "msg_internet_product".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_employee_size".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "msg_132_121_employees".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_head_office".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "msg_mountain_view_california".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_type".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "msg_multinational_company".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_since".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_1998".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_specialization".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Container(
                      width: 274.h,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        right: 81.h,
                      ),
                      child: Text(
                        "msg_search_technology".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_company_gallery".tr,
                        style: CustomTextStyles.titleSmall0penSansff150b3d,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    _buildAboutUs(),
                    SizedBox(height: 22.v),
                    _buildButtonApplyNow()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAboutUs() {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 115.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 23.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount:
                controller.aboutUsModel0bj.value.aboutusItemList.value.length,
            itemBuilder: (context, index) {
              AboutusItemModel model =
                  controller.aboutUsModel0bj.value.aboutusItemList.value[index];
              return AboutusItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildButtonApplyNow() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        children: [
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(13.h),
            decoration: IconButtonStyleHelper.outlineBlueGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgBookmarkOrangeA20001,
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              text: "lbl_apply_now".tr.toUpperCase(),
              margin: EdgeInsets.only(left: 15.h),
            ),
          )
        ],
      ),
    );
  }

  onTapTxtWeburl() {
// TODO: implement Actions
  }
}
