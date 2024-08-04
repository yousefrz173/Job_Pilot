import 'package:get/get.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/sign_up_screen/binding/sign_up_binding.dart';
import '../presentation/sign_up_as/sign_up_as_screen.dart';
import '../presentation/sign_up_as/binding/sign_up_as_binding.dart';
import '../presentation/check_your_email_screen/binding/check_your_email_binding.dart';
import '../presentation/successfully_screen/successfully_screen.dart';
import '../presentation/description_screen/description_screen.dart';
import '../presentation/description_screen/binding/description_binding.dart';
import '../presentation/description_one_screen/description_one_screen.dart';
import '../presentation/description_one_screen/binding/description_one_binding.dart';
import '../presentation/company_screen/company_screen.dart';
import '../presentation/logo_screen/logo_screen.dart';
import '../presentation/logo_screen/binding/logo_binding.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import '../presentation/check_your_email_screen/check_your_email_screen.dart';
import '../presentation/successfully_screen/binding/successfully_binding.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/home_screen/binding/home_binding.dart';
import '../presentation/company_screen/binding/company_binding.dart';
import '../presentation/company_one_screen/company_one_screen.dart';
import '../presentation/company_one_screen/binding/company_one_binding.dart';
import '../presentation/upload_cv_screen/upload_cv_screen.dart';
import '../presentation/upload_cv_screen/binding/upload_cv_binding.dart';
import '../presentation/upload_cv_one_screen/upload_cv_one_screen.dart';
import '../presentation/upload_cv_one_screen/binding/upload_cv_one_binding.dart';
import '../presentation/successful_screen/successful_screen.dart';
import '../presentation/successful_screen/binding/successful_binding.dart';
import '../presentation/search_tab_container_screen/search_tab_container_screen.dart';
import '../presentation/search_tab_container_screen/binding/search_tab_container_binding.dart';
import '../presentation/specialization_screen/specialization_screen.dart';
import '../presentation/specialization_screen/binding/specialization_binding.dart';
import '../presentation/filter_screen/filter_screen.dart';
import '../presentation/filter_screen/binding/filter_binding.dart';
import '../presentation/filter_one_screen/filter_one_screen.dart';
import '../presentation/filter_one_screen/binding/filter_one_binding.dart';
import '../presentation/no_results_found_screen/no_results_found_screen.dart';
import '../presentation/no_results_found_screen/binding/no_results_found_binding.dart';
import '../presentation/posting_container_screen/posting_container_screen.dart';
import '../presentation/posting_container_screen/binding/posting_container_binding.dart';
import '../presentation/my_connection_screen/my_connection_screen.dart';
import '../presentation/my_connection_screen/binding/my_connection_binding.dart';
import '../presentation/about_us_tab_container_screen/about_us_tab_container_screen.dart';
import '../presentation/about_us_tab_container_screen/binding/about_us_tab_container_binding.dart';
import '../presentation/add_post_screen/add_post_screen.dart';
import '../presentation/add_post_screen/binding/add_post_binding.dart';
import '../presentation/add_a_job_screen/add_a_job_screen.dart';
import '../presentation/add_a_job_screen/binding/add_a_job_binding.dart';
import '../presentation/edit_add_a_job_screen/edit_add_a_job_screen.dart';
import '../presentation/edit_add_a_job_screen/binding/edit_add_a_job_binding.dart';
import '../presentation/job_position_screen/job_position_screen.dart';
import '../presentation/job_position_screen/binding/job_position_binding.dart';
import '../presentation/location_screen/location_screen.dart';
import '../presentation/location_screen/binding/location_binding.dart';
import '../presentation/company_two_screen/company_two_screen.dart';
import '../presentation/company_two_screen/binding/company_two_binding.dart';
import '../presentation/shared_a_job_screen/shared_a_job_screen.dart';
import '../presentation/shared_a_job_screen/binding/shared_a_job_binding.dart';
import '../presentation/message_screen/message_screen.dart';
import '../presentation/message_screen/binding/message_binding.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/chat_screen/binding/chat_binding.dart';
import '../presentation/no_message_screen/no_message_screen.dart';
import '../presentation/no_message_screen/binding/no_message_binding.dart';
import '../presentation/save_job_screen/save_job_screen.dart';
import '../presentation/save_job_screen/binding/save_job_binding.dart';
import '../presentation/no_savings_screen/no_savings_screen.dart';
import '../presentation/no_savings_screen/binding/no_savings_binding.dart';
import '../presentation/notifications_screen/notifications_screen.dart';
import '../presentation/notifications_screen/binding/notifications_binding.dart';
import '../presentation/notifications_one_screen/notifications_one_screen.dart';
import '../presentation/notifications_one_screen/binding/notifications_one_binding.dart';
import '../presentation/notifications_two_screen/notifications_two_screen.dart';
import '../presentation/notifications_two_screen/binding/notifications_two_binding.dart';
import '../presentation/your_application_screen/your_application_screen.dart';
import '../presentation/your_application_screen/binding/your_application_binding.dart';
import '../presentation/no_notifications_screen/no_notifications_screen.dart';
import '../presentation/no_notifications_screen/binding/no_notifications_binding.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/profile_screen/binding/profile_binding.dart';
import '../presentation/edit_profile_screen/edit_profile_screen.dart';
import '../presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import '../presentation/about_me_screen/about_me_screen.dart';
import '../presentation/about_me_screen/binding/about_me_binding.dart';
import '../presentation/add_work_experience_screen/add_work_experience_screen.dart';
import '../presentation/add_work_experience_screen/binding/add_work_experience_binding.dart';
import '../presentation/change_work_experience_screen/change_work_experience_screen.dart';
import '../presentation/change_work_experience_screen/binding/change_work_experience_binding.dart';
import '../presentation/add_education_screen/add_education_screen.dart';
import '../presentation/add_education_screen/binding/add_education_binding.dart';
import '../presentation/change_education_screen/change_education_screen.dart';
import '../presentation/change_education_screen/binding/change_education_binding.dart';
import '../presentation/level_of_education_screen/level_of_education_screen.dart';
import '../presentation/level_of_education_screen/binding/level_of_education_binding.dart';
import '../presentation/institution_name_screen/institution_name_screen.dart';
import '../presentation/institution_name_screen/binding/institution_name_binding.dart';
import '../presentation/field_of_study_screen/field_of_study_screen.dart';
import '../presentation/field_of_study_screen/binding/field_of_study_binding.dart';
import '../presentation/start_date_screen/start_date_screen.dart';
import '../presentation/start_date_screen/binding/start_date_binding.dart';
import '../presentation/add_skill_screen/add_skill_screen.dart';
import '../presentation/add_skill_screen/binding/add_skill_binding.dart';
import '../presentation/add_skill_one_screen/add_skill_one_screen.dart';
import '../presentation/add_skill_one_screen/binding/add_skill_one_binding.dart';
import '../presentation/skill_8_screen/skill_8_screen.dart';
import '../presentation/skill_8_screen/binding/skill_8_binding.dart';
import '../presentation/language_screen/language_screen.dart';
import '../presentation/language_screen/binding/language_binding.dart';
import '../presentation/search_language_screen/search_language_screen.dart';
import '../presentation/search_language_screen/binding/search_language_binding.dart';
import '../presentation/add_language_screen/add_language_screen.dart';
import '../presentation/add_language_screen/binding/add_language_binding.dart';
import '../presentation/add_appreciation_screen/add_appreciation_screen.dart';
import '../presentation/add_appreciation_screen/binding/add_appreciation_binding.dart';
import '../presentation/edit_appreciation_screen/edit_appreciation_screen.dart';
import '../presentation/edit_appreciation_screen/binding/edit_appreciation_binding.dart';
import '../presentation/add_resume_screen/add_resume_screen.dart';
import '../presentation/add_resume_screen/binding/add_resume_binding.dart';
import '../presentation/upload_resume_screen/upload_resume_screen.dart';
import '../presentation/upload_resume_screen/binding/upload_resume_binding.dart';
import '../presentation/my_profile_vone_screen/my_profile_vone_screen.dart';
import '../presentation/my_profile_vone_screen/binding/my_profile_vone_binding.dart';
import '../presentation/add_resume_vtwo_screen/add_resume_vtwo_screen.dart';
import '../presentation/add_resume_vtwo_screen/binding/add_resume_vtwo_binding.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/settings_screen/binding/settings_binding.dart';
import '../presentation/update_password_screen/update_password_screen.dart';
import '../presentation/update_password_screen/binding/update_password_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String logoScreen = '/logo_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpAsScreen = '/sign_up_as_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String checkYourEmailScreen = '/check_your_email_screen';

  static const String successfullyScreen = '/successfully_screen';

  static const String homeScreen = '/home_screen';

  static const String descriptionScreen = '/description_screen';

  static const String descriptionOneScreen = '/description_one_screen';

  static const String companyScreen = '/company_screen';

  static const String companyOneScreen = '/company_one_screen';

  static const String uploadCvScreen = '/upload_cv_screen';

  static const String uploadCvOneScreen = '/upload_cv_one_screen';

  static const String successfulScreen = '/successful_screen';

  static const String searchPage = '/search_page';

  static const String searchTabContainerScreen = '/search_tab_container_screen';

  static const String specializationScreen = '/specialization_screen';

  static const String filterScreen = '/filter_screen';

  static const String filterOneScreen = '/filter_one_screen';

  static const String noResultsFoundScreen = '/no_results_found_screen';

  static const String postingPage = '/posting_page';

  static const String postingContainerScreen = '/posting_container_screen';

  static const String myConnectionScreen = '/my_connection_screen';

  static const String aboutUsPage = '/about_us_page';

  static const String aboutUsTabContainerScreen =
      '/about_us_tab_container_screen';

  static const String postPage = '/post_page';

  static const String jobsPage = '/jobs_page';

  static const String addPostScreen = '/add_post_screen';

  static const String addAJobScreen = '/add_a_job_screen';

  static const String editAddAJobScreen = '/edit_add_a_job_screen';

  static const String jobPositionScreen = '/job_position_screen';

  static const String locationScreen = '/location_screen';

  static const String companyTwoScreen = '/company_two_screen';

  static const String sharedAJobScreen = '/shared_a_job_screen';

  static const String messageScreen = '/message_screen';

  static const String chatScreen = '/chat_screen';

  static const String noMessageScreen = '/no_message_screen';

  static const String saveJobScreen = '/save_job_screen';

  static const String noSavingsScreen = '/no_savings_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String notificationsOneScreen = '/notifications_one_screen';

  static const String notificationsTwoScreen = '/notifications_two_screen';

  static const String yourApplicationScreen = '/your_application_screen';

  static const String noNotificationsScreen = '/no_notifications_screen';

  static const String profileScreen = '/profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String aboutMeScreen = '/about_me_screen';

  static const String addWorkExperienceScreen = '/add_work_experience_screen';

  static const String changeWorkExperienceScreen =
      '/change_work_experience_screen';

  static const String addEducationScreen = '/add_education_screen';

  static const String changeEducationScreen = '/change_education_screen';

  static const String levelOfEducationScreen = '/level_of_education_screen';

  static const String institutionNameScreen = '/institution_name_screen';

  static const String fieldOfStudyScreen = '/field_of_study_screen';

  static const String startDateScreen = '/start_date_screen';

  static const String addSkillScreen = '/add_skill_screen';

  static const String addSkillOneScreen = '/add_skill_one_screen';

  static const String skil18Screen = '/skill_8_screen';

  static const String languageScreen = '/language_screen';

  static const String searchLanguageScreen = '/search_language_screen';

  static const String addLanguageScreen = '/add_language_screen';

  static const String addAppreciationScreen = '/add_appreciation_screen';

  static const String editAppreciationScreen = '/edit_appreciation_screen';

  static const String addResumeScreen = '/add_resume_screen';

  static const String uploadResumeScreen = '/upload_resume_screen';

  static const String myProfileVoneScreen = '/my_profile_vone_screen';

  static const String addResumeVtwoScreen = '/add_resume_vtwo_screen';

  static const String settingsScreen = '/settings_screen';

  static const String updatePasswordScreen = '/update_password_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: logoScreen,
      page: () => LogoScreen(),
      bindings: [
        LogoBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: signUpAsScreen,
      page: () => SignUpAsScreen(),
      bindings: [
        SignUpAsBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => const ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: checkYourEmailScreen,
      page: () => CheckYourEmailScreen(),
      bindings: [
        CheckYourEmailBinding(),
      ],
    ),
    GetPage(
      name: successfullyScreen,
      page: () => SuccessfullyScreen(),
      bindings: [
        SuccessfullyBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: descriptionScreen,
      page: () => DescriptionScreen(),
      bindings: [
        DescriptionBinding(),
      ],
    ),
    GetPage(
      name: companyScreen,
      page: () => CompanyScreen(),
      bindings: [
        CompanyBinding(),
      ],
    ),
    GetPage(
      name: descriptionOneScreen,
      page: () => DescriptionOneScreen(),
      bindings: [
        DescriptionOneBinding(),
      ],
    ),
    GetPage(
      name: uploadCvScreen,
      page: () => UploadCvScreen(),
      bindings: [
        UploadCvBinding(),
      ],
    ),
    GetPage(
      name: uploadCvOneScreen,
      page: () => UploadCvOneScreen(),
      bindings: [
        UploadCvOneBinding(),
      ],
    ),
    GetPage(
      name: successfulScreen,
      page: () => SuccessfulScreen(),
      bindings: [
        SuccessfulBinding(),
      ],
    ),
    GetPage(
      name: searchTabContainerScreen,
      page: () => SearchTabContainerScreen(),
      bindings: [
        SearchTabContainerBinding(),
      ],
    ),
    GetPage(
      name: specializationScreen,
      page: () => SpecializationScreen(),
      bindings: [
        SpecializationBinding(),
      ],
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
      ],
    ),
    GetPage(
      name: filterOneScreen,
      page: () => FilterOneScreen(),
      bindings: [
        FilterOneBinding(),
      ],
    ),
    GetPage(
      name: noResultsFoundScreen,
      page: () => NoResultsFoundScreen(),
      bindings: [
        NoResultsFoundBinding(),
      ],
    ),
    GetPage(
      name: postingContainerScreen,
      page: () => PostingContainerScreen(),
      bindings: [
        PostingContainerBinding(),
      ],
    ),
    GetPage(
      name: myConnectionScreen,
      page: () => MyConnectionScreen(),
      bindings: [
        MyConnectionBinding(),
      ],
    ),
    GetPage(
      name: aboutUsTabContainerScreen,
      page: () => AboutUsTabContainerScreen(),
      bindings: [
        AboutUsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: addPostScreen,
      page: () => AddPostScreen(),
      bindings: [
        AddPostBinding(),
      ],
    ),
    GetPage(
      name: addAJobScreen,
      page: () => AddAJobScreen(),
      bindings: [
        AddAJobBinding(),
      ],
    ),
    GetPage(
      name: editAddAJobScreen,
      page: () => EditAddAJobScreen(),
      bindings: [
        EditAddAJobBinding(),
      ],
    ),
    GetPage(
      name: jobPositionScreen,
      page: () => JobPositionScreen(),
      bindings: [
        JobPositionBinding(),
      ],
    ),
    GetPage(
      name: locationScreen,
      page: () => LocationScreen(),
      bindings: [
        LocationBinding(),
      ],
    ),
    GetPage(
      name: companyTwoScreen,
      page: () => CompanyTwoScreen(),
      bindings: [
        CompanyTwoBinding(),
      ],
    ),
    GetPage(
      name: sharedAJobScreen,
      page: () => SharedAJobScreen(),
      bindings: [
        SharedAJobBinding(),
      ],
    ),
    GetPage(
      name: messageScreen,
      page: () => MessageScreen(),
      bindings: [
        MessageBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: noMessageScreen,
      page: () => NoMessageScreen(),
      bindings: [
        NoMessageBinding(),
      ],
    ),
    GetPage(
      name: saveJobScreen,
      page: () => SaveJobScreen(),
      bindings: [
        SaveJobBinding(),
      ],
    ),
    GetPage(
      name: noSavingsScreen,
      page: () => NoSavingsScreen(),
      bindings: [
        NoSavingsBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: notificationsOneScreen,
      page: () => NotificationsOneScreen(),
      bindings: [
        NotificationsOneBinding(),
      ],
    ),
    GetPage(
      name: notificationsTwoScreen,
      page: () => NotificationsTwoScreen(),
      bindings: [
        NotificationsTwoBinding(),
      ],
    ),
    GetPage(
      name: yourApplicationScreen,
      page: () => YourApplicationScreen(),
      bindings: [
        YourApplicationBinding(),
      ],
    ),
    GetPage(
      name: noNotificationsScreen,
      page: () => NoNotificationsScreen(),
      bindings: [
        NoNotificationsBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: aboutMeScreen,
      page: () => AboutMeScreen(),
      bindings: [
        AboutMeBinding(),
      ],
    ),
    GetPage(
      name: addWorkExperienceScreen,
      page: () => AddWorkExperienceScreen(),
      bindings: [
        AddWorkExperienceBinding(),
      ],
    ),
    GetPage(
      name: changeWorkExperienceScreen,
      page: () => ChangeWorkExperienceScreen(),
      bindings: [
        ChangeWorkExperienceBinding(),
      ],
    ),
    GetPage(
      name: addEducationScreen,
      page: () => AddEducationScreen(),
      bindings: [
        AddEducationBinding(),
      ],
    ),
    GetPage(
      name: changeEducationScreen,
      page: () => ChangeEducationScreen(),
      bindings: [
        ChangeEducationBinding(),
      ],
    ),
    GetPage(
      name: levelOfEducationScreen,
      page: () => LevelOfEducationScreen(),
      bindings: [
        LevelOfEducationBinding(),
      ],
    ),
    GetPage(
      name: institutionNameScreen,
      page: () => InstitutionNameScreen(),
      bindings: [
        InstitutionNameBinding(),
      ],
    ),
    GetPage(
      name: fieldOfStudyScreen,
      page: () => FieldOfStudyScreen(),
      bindings: [
        FieldOfStudyBinding(),
      ],
    ),
    GetPage(
      name: startDateScreen,
      page: () => StartDateScreen(),
      bindings: [
        StartDateBinding(),
      ],
    ),
    GetPage(
      name: addSkillScreen,
      page: () => AddSkillScreen(),
      bindings: [
        AddSkillBinding(),
      ],
    ),
    GetPage(
      name: addSkillOneScreen,
      page: () => AddSkillOneScreen(),
      bindings: [
        AddSkillOneBinding(),
      ],
    ),
    GetPage(
      name: skil18Screen,
      page: () => Skill8Screen(),
      bindings: [
        Skil18Binding(),
      ],
    ),
    GetPage(
      name: languageScreen,
      page: () => LanguageScreen(),
      bindings: [
        LanguageBinding(),
      ],
    ),
    GetPage(
      name: searchLanguageScreen,
      page: () => SearchLanguageScreen(),
      bindings: [
        SearchLanguageBinding(),
      ],
    ),
    GetPage(
      name: addLanguageScreen,
      page: () => AddLanguageScreen(),
      bindings: [
        AddLanguageBinding(),
      ],
    ),
    GetPage(
      name: addAppreciationScreen,
      page: () => AddAppreciationScreen(),
      bindings: [
        AddAppreciationBinding(),
      ],
    ),
    GetPage(
      name: editAppreciationScreen,
      page: () => EditAppreciationScreen(),
      bindings: [
        EditAppreciationBinding(),
      ],
    ),
    GetPage(
      name: addResumeScreen,
      page: () => AddResumeScreen(),
      bindings: [
        AddResumeBinding(),
      ],
    ),
    GetPage(
      name: uploadResumeScreen,
      page: () => UploadResumeScreen(),
      bindings: [
        UploadResumeBinding(),
      ],
    ),
    GetPage(
      name: myProfileVoneScreen,
      page: () => MyProfileVoneScreen(),
      bindings: [
        MyProfileVoneBinding(),
      ],
    ),
    GetPage(
      name: addResumeVtwoScreen,
      page: () => AddResumeVtwoScreen(),
      bindings: [
        AddResumeVtwoBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: updatePasswordScreen,
      page: () => UpdatePasswordScreen(),
      bindings: [
        UpdatePasswordBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
  ];
}
