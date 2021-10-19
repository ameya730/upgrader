import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_localization_controller.dart';
import 'package:vpeepalvoappoct/3_controllers/0.1_login_controller.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/0.0_splashscreen.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/0_offlinepage.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/1_landingpage.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/2_signup2ndpage.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/1_managevos.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/2.1_projectpages/2.1.0_createproject.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/2.1_projectpages/2.1.1_postcreationpage.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/2.1_projectpages/2.1.2_projectargetpage.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/2_createvo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(LoginController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.firaSans().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      translations: LocalizationService(),
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      supportedLocales: [
        const Locale('en'),
      ],
      home: SplashScreen(),
      routes: {
        '/landingpage': (context) => LandingPage(),
        '/homepage': (context) => HomePage(),
        '/signupsecondpage': (context) => SignUpSecondPageWidget(),
        '/nologinofflinescreen': (context) => OfflinePage(),
        '/manageVOs': (context) => ManageVOPage(),
        '/createproject': (context) => CreateProject(),
        '/projectpostcreationpage': (context) => PostProjectCreation(),
        '/projecttarget': (context) => ProjectTargetsPage(),
        '/createVO': (context) => CreateVO(),
      },
    );
  }
}
