import '../models/thirtytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class ThirtytwoItemWidget extends StatelessWidget {
  ThirtytwoItemWidget(
    this.thirtytwoItemModel0bj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtytwoItemModel thirtytwoItemModel0bj;

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
          thirtytwoItemModel0bj.leadership!.value,
          style: TextStyle(
            color: (thirtytwoItemModel0bj.isSelected?.value ?? false)
                ? theme.colorScheme.onPrimaryContainer
                : appTheme.blueGray70001,
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
        selected: (thirtytwoItemModel0bj.isSelected?.value ?? false),
        backgroundColor: appTheme.blueGray10002,
        selectedColor: appTheme.orangeA20001,
        shape: (thirtytwoItemModel0bj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
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
          thirtytwoItemModel0bj.isSelected!.value = value;
        },
      ),
    );
  }
}
