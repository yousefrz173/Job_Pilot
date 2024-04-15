import '../models/fulltime2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class Fulltime2ItemWidget extends StatelessWidget {
  Fulltime2ItemWidget(
    this.fulltime2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  Fulltime2ItemModel fulltime2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 10.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          fulltime2ItemModelObj.fullTime!.value,
          style: TextStyle(
            color: (fulltime2ItemModelObj.isSelected?.value ?? false)
                ? theme.colorScheme.onPrimaryContainer
                : appTheme.blueGray70001,
            fontSize: 12.fSize,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (fulltime2ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blueGray100,
        selectedColor: appTheme.orangeA20001,
        shape: (fulltime2ItemModelObj.isSelected?.value ?? false)
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
          fulltime2ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
