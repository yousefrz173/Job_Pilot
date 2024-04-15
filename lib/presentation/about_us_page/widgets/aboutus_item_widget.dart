import '../models/aboutus_item_model.dart';
import '../controller/about_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class AboutusItemWidget extends StatelessWidget {
  AboutusItemWidget(
    this.aboutsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AboutusItemModel aboutsItemModelObj;

  var controller = Get.find<AboutUsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 158.h,
      child: Align(
        alignment: Alignment.center,
        child: Obx(
          () => CustomImageView(
            imagePath: aboutsItemModelObj.image!.value,
            height: 115.v,
            radius: BorderRadius.circular(
              6.h,
            ),
          ),
        ),
      ),
    );
  }
}
