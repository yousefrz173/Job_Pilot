import '../models/searchlanguage_item_model.dart';
import '../controller/search_language_controller.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class SearchlanguageItemWidget extends StatelessWidget {
  SearchlanguageItemWidget(
    this.searchlanguageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchlanguageItemModel searchlanguageItemModelObj;

  var controller = Get.find<SearchLanguageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: searchlanguageItemModelObj.arabic!.value,
              height: 30.adaptSize,
              width: 30.adaptSize,
              radius: BorderRadius.circular(
                15.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 7.v,
            ),
            child: Obx(
              () => Text(
                searchlanguageItemModelObj.arabic1!.value,
                style: CustomTextStyles.bodySmal10penSansGray90004,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
