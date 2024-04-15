import '../models/companyone_item_model.dart';
import '../controller/company_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class CompanyoneItemWidget extends StatelessWidget {
  CompanyoneItemWidget(
    this.companyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  CompanyoneItemModel companyoneItemModelObj;

  var controller = Get.find<CompanyOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 158.h,
      child: Align(
        alignment: Alignment.center,
        child: Obx(
          () => CustomImageView(
            imagePath: companyoneItemModelObj.image!.value,
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
