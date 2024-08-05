import '../models/search_item_model.dart';
import '../controller/search_controller.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(
    this.searchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  SearchItemModel searchItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineIndigoD.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  child: CustomImageView(
                    imagePath: searchItemModelObj.logoGoogle!.value,
                  ),
                ),
              ),
              Container(
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 15.v),
                child: Icon(
                  Icons.bookmark,
                ),
              ),
              // CustomImageView(
              //   imagePath: ImageConstant.imgBookmark,
              //   height: 24.adaptSize,
              //   width: 24.adaptSize,
              //   margin: EdgeInsets.only(bottom: 15.v),
              // ),
            ],
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              searchItemModelObj.uIUXDesigner!.value,
              style: CustomTextStyles.titleSmallGray90003,
            ),
          ),
          SizedBox(height: 2.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Obx(
                () => Text(
                  searchItemModelObj.googleInc!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 8.v,
                  bottom: 5.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.blueGray70001,
                  borderRadius: BorderRadius.circular(
                    1.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Obx(
                  () => Text(
                    searchItemModelObj.californiaUSA!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Obx(
                  () => Text(
                    searchItemModelObj.design!.value,
                    style: CustomTextStyles.bodySmal110,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Obx(
                  () => Text(
                    searchItemModelObj.fullTime!.value,
                    style: CustomTextStyles.bodySmal110,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Obx(
                  () => Text(
                    searchItemModelObj.seniorDesigner!.value,
                    style: CustomTextStyles.bodySmal110,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Obx(
                  () => Text(
                    searchItemModelObj.duration!.value,
                    style: CustomTextStyles.bodySmallBluegray3000310,
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_15k".tr,
                      style: CustomTextStyles.titleSmallff000000,
                    ),
                    TextSpan(
                      text: "lbl2".tr,
                      style: CustomTextStyles.labelLargeffa9a5b8,
                    ),
                    TextSpan(
                      text: "lbl_mo".tr,
                      style: CustomTextStyles.bodySmallffa9a5b8,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
