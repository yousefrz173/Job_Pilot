import '../creat_job_or_post_bottomsheet/creat_job_or_post_bottomsheet.dart';
import '../creat_job_or_post_bottomsheet/controller/creat_job_or_post_controller.dart';
import '../type_of_workplace_bottomsheet/type_of_workplace_bottomsheet.dart';
import '../type_of_workplace_bottomsheet/controller/type_of_workplace_controller.dart';
import '../choose_job_type_bottomsheet/choose_job_type_bottomsheet.dart';
import '../choose_job_type_bottomsheet/controller/choose_job_type_controller.dart';
import '../options_bottomsheet/options_bottomsheet.dart';
import '../options_bottomsheet/controller/options_controller.dart';
import '../options_one_bottomsheet/options_one_bottomsheet.dart';
import '../options_one_bottomsheet/controller/options_one_controller.dart';
import '../undo_changes_bottomsheet/undo_changes_bottomsheet.dart';
import '../undo_changes_bottomsheet/controller/undo_changes_controller.dart';
import '../undo_changes_one_bottomsheet/undo_changes_one_bottomsheet.dart';
import '../undo_changes_one_bottomsheet/controller/undo_changes_one_controller.dart';
import '../remove_work_experience_bottomsheet/remove_work_experience_bottomsheet.dart';
import '../remove_work_experience_bottomsheet/controller/remove_work_experience_controller.dart';
import '../undo_changes_two_bottomsheet/undo_changes_two_bottomsheet.dart';
import '../undo_changes_two_bottomsheet/controller/undo_changes_two_controller.dart';
import '../remove_education_bottomsheet/remove_education_bottomsheet.dart';
import '../remove_education_bottomsheet/controller/remove_education_controller.dart';
import '../end_date_dialog/end_date_dialog.dart';
import '../end_date_dialog/controller/end_date_controller.dart';
import '../oral_dialog/oral_dialog.dart';
import '../oral_dialog/controller/oral_controller.dart';
import '../remove_language_bottomsheet/remove_language_bottomsheet.dart';
import '../remove_language_bottomsheet/controller/remove_language_controller.dart';
import '../undo_changes_three_bottomsheet/undo_changes_three_bottomsheet.dart';
import '../undo_changes_three_bottomsheet/controller/undo_changes_three_controller.dart';
import '../remove_appreciation_bottomsheet/remove_appreciation_bottomsheet.dart';
import '../remove_appreciation_bottomsheet/controller/remove_appreciation_controller.dart';
import '../log_out_bottomsheet/log_out_bottomsheet.dart';
import '../log_out_bottomsheet/controller/log_out_controller.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillOnPrimaryContainer,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "lbl_logo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_splash_screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_sign_up2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_forgot_password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_check_your_email".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkYourEmailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_successfully".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.successfullyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_home_screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_description".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.descriptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_description_one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.descriptionOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_company".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.companyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_company_one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.companyOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_upload_cv".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.uploadCvScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_upload_cv_one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.uploadCvOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_successful".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.successfulScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_search_tab_container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_specialization".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.specializationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_filter".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.filterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_filter_one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.filterOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_no_results_found".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.noResultsFoundScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_posting_container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.postingContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_my_connection".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myConnectionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_about_us_tab_container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.aboutUsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_creat_job_or_post".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              CreatJobOrPostBottomsheet(
                                  Get.put(CreatJobOrPostController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_post".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPostScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_a_job".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addAJobScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_edit_add_a_job".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editAddAJobScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_job_position2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.jobPositionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_type_of_workplace2".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              TypeOfWorkplaceBottomsheet(
                                  Get.put(TypeOfWorkplaceController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.locationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_company_two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.companyTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_choose_job_type".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              ChooseJobTypeBottomsheet(
                                  Get.put(ChooseJobTypeController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_shared_a_job".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sharedAJobScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_message".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_no_message".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.noMessageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_save_job".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.saveJobScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_options_bottomsheet".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(context,
                              OptionsBottomsheet(Get.put(OptionsController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_no_savings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.noSavingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_notifications_one".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_notifications_two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationsTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_options_one_bottomsheet".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              OptionsOneBottomsheet(
                                  Get.put(OptionsOneController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_your_application".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.yourApplicationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_no_notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.noNotificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_edit_profile2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_about_me".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aboutMeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_undo_changes".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              UndoChangesBottomsheet(
                                  Get.put(UndoChangesController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_add_work_experience".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addWorkExperienceScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_change_work_experience".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.changeWorkExperienceScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_undo_changes_one".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              UndoChangesOneBottomsheet(
                                  Get.put(UndoChangesOneController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_remove_work_experience2".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              RemoveWorkExperienceBottomsheet(
                                  Get.put(RemoveWorkExperienceController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_education".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addEducationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_change_education".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changeEducationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_undo_changes_two".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              UndoChangesTwoBottomsheet(
                                  Get.put(UndoChangesTwoController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_remove_education2".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              RemoveEducationBottomsheet(
                                  Get.put(RemoveEducationController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_level_of_education2".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.levelOfEducationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_institution_name".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.institutionNameScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_field_of_study".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fieldOfStudyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_end_date_dialog".tr,
                          onTapScreenTitle: () => onTapDialogTitle(context,
                              EndDateDialog(Get.put(EndDateController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_start_date2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.startDateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_skill".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addSkillScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_skill_one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addSkillOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_skill_8".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.skil18Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_search_language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchLanguageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addLanguageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_oral_dialog".tr,
                          onTapScreenTitle: () => onTapDialogTitle(
                              context, OralDialog(Get.put(OralController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_remove_language".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              RemoveLanguageBottomsheet(
                                  Get.put(RemoveLanguageController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_add_appreciation".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addAppreciationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_edit_appreciation".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.editAppreciationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_undo_changes_three".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              UndoChangesThreeBottomsheet(
                                  Get.put(UndoChangesThreeController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_remove_appreciation2".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              RemoveAppreciationBottomsheet(
                                  Get.put(RemoveAppreciationController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_resume".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addResumeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_upload_resume".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.uploadResumeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_my_profile_vone".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myProfileVoneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_add_resume_vtwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addResumeVtwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_update_password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.updatePasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_log_out_bottomsheet".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(context,
                              LogOutBottomsheet(Get.put(LogOutController()))),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "lbl_app_navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "msg_check_your_app_s".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray40002,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          ),
        ],
      ),
    );
  }

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return className;
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray40002,
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
