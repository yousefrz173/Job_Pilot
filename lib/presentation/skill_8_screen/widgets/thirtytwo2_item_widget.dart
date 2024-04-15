import '../models/thirtytwo2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class Thirtytwo2ItemWidget extends StatelessWidget {
  Thirtytwo2ItemWidget(
    this.thirtytwo2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Thirtytwo2ItemModel thirtytwo2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          left: 15.h,
          top: 10.v,
          bottom: 10.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          thirtytwo2ItemModelObj.leadership!.value,
          style: TextStyle(
            color: appTheme.blueGray70001,
            fontSize: 12.fSize,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        deleteIcon: CustomImageView(
          imagePath: ImageConstant.imgCloseGray90003,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 6.h),
        ),
        onDeleted: () {},
        selected: (thirtytwo2ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blueGray100,
        selectedColor: appTheme.blueGray100,
        shape: (thirtytwo2ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray70001.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
        onSelected: (value) {
          thirtytwo2ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
