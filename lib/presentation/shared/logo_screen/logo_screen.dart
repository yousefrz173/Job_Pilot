import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import 'controller/logo_controller.dart';

// ignore_for_file: must_be_immutable
class LogoScreen extends GetWidget<LogoController> {
  const LogoScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: "assets/icons/logo - screen.png",
                height: 200.adaptSize,
                width: 200.adaptSize,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_jobspot".tr,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 2.v),
            ],
          ),
        ),
      ),
    );
  }
}
