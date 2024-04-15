import '../models/fulltime_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class FulltimeItemWidget extends StatelessWidget {
  FulltimeItemWidget(
    this.fulltimeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  FulltimeItemModel fulltimeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 10.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          fulltimeItemModelObj.fullTime!.value,
          style: TextStyle(
            color: (fulltimeItemModelObj.isSelected?.value ?? false)
                ? theme.colorScheme.onPrimaryContainer
                : appTheme.blueGray70001,
            fontSize: 12.fSize,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (fulltimeItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blueGray100,
        selectedColor: appTheme.orangeA20001,
        shape: (fulltimeItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
        onSelected: (value) {
          fulltimeItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
