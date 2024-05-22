import 'widgets/search_item_widget.dart';
import 'models/search_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:jobpilot/core/app_export.dart';
import 'controller/search_controller.dart';
import 'models/search_model.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );
  SearchController controller = Get.put(SearchController(SearchModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      _buildSearch(),
                      SizedBox(height: 35.v),
                      _buildGoogleInc(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 15.v,
          );
        },
        itemCount: controller.searchModelObj.value.searchItemList.value.length,
        itemBuilder: (context, index) {
          SearchItemModel model =
              controller.searchModelObj.value.searchItemList.value[index];
          return SearchItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogleInc() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 35.v,
      ),
      decoration: AppDecoration.outlineIndigoD.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.v),
          Text(
            "lbl_ux_researcher".tr,
            style: CustomTextStyles.titleSmall0penSansGray90003,
          ),
          SizedBox(height: 6.v),
          Row(
            children: [
              Text(
                "lbl_twitter_inc".tr,
                style: CustomTextStyles.bodySmall0penSans,
              ),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 9.v,
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
                child: Text(
                  "lbl_california_usa".tr,
                  style: CustomTextStyles.bodySmallOpenSans10,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 79.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Text(
                  "lbl_design".tr,
                  style: CustomTextStyles.bodySmal110,
                ),
              ),
              Container(
                width: 82.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Text(
                  "lbl_full_time2".tr,
                  style: CustomTextStyles.bodySmal110,
                ),
              ),
              Container(
                width: 114.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Text(
                  "lbl_senior_designer".tr,
                  style: CustomTextStyles.bodySmal110,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "lbl_25_minute_ago".tr,
                  style: CustomTextStyles.bodySmal10penSansBluegray40001,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_12k".tr,
                      style: CustomTextStyles.titleSmallOpenSansff000000,
                    ),
                    TextSpan(
                      text: "lbl2".tr,
                      style: CustomTextStyles.labelLargeOpenSansffa9a5b8,
                    ),
                    TextSpan(
                      text: "lbl_mo".tr,
                      style: CustomTextStyles.bodySmal10penSansff333030,
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
