import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );
  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo2002d,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 10.v,
                bottom: 10.v,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "+${country.phoneCode}",
                      style: CustomTextStyles.bodySmall0penSans,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowUp,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    margin: EdgeInsets.fromLTRB(22.h, 3.v, 16.h, 7.v),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 19.h,
                right: 5.h,
              ),
              child: CustomTextFormField(
                width: 229.h,
                controller: controller,
                hintText: "lbl_619_3456_7890".tr,
                hintStyle: theme.textTheme.bodySmall!,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search ... ',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
