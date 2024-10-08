import '../../../../core/my_app_export.dart';
import '../models/splash_model.dart';

/// A controller class for the SplashScreen.

/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends GetxController {
  Rx<SplashModel> splashModel0bj = SplashModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      Get.offNamed(
        AppRoutes.loginScreen,
      );
    });
  }
}
