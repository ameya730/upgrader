import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_localization_controller.dart';
import 'package:vpeepalvoappoct/3_controllers/0.1_login_controller.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_offlinepage.dart';
import 'package:vpeepalvoappoct/4_pages/0.1_splashscreen.dart';
import 'package:vpeepalvoappoct/4_pages/3.0_homepage.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_landingpage.dart';
import 'package:vpeepalvoappoct/4_pages/1.1_signup2ndpage.dart';
import 'package:vpeepalvoappoct/4_pages/4.0_profile_page.dart';
import 'package:vpeepalvoappoct/4_pages/5.0_createvo_page.dart';
import 'package:vpeepalvoappoct/4_pages/5.1_yourvos_page.dart';
import 'package:vpeepalvoappoct/4_pages/6.0_createproject_page.dart';

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
        '/profilepage': (context) => ProfilePage(),
        '/signupsecondpage': (context) => SignUpSecondPageWidget(),
        '/nologinofflinescreen': (context) => OfflinePage(),
        '/createVOfirstpage': (context) => CreateVOPage(),
        '/yourvospage': (context) => ViewYourVOsPage(),
        '/createproject': (context) => ProjectCreation(),
      },
    );
  }
}
