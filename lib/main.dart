import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/my_app_export.dart';
import 'data/apiClient/websocket_util.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(const JobPilot());
  });
}

class JobPilot extends StatelessWidget {
  const JobPilot({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: 'jobpilot',
        initialBinding: InitialBindings(),
        initialRoute: AppRoutes.myConnectionScreen,
        getPages: AppRoutes.pages,
      );
    });
  }
}
