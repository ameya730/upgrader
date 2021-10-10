import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_getxnetworkmanager.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_localization_controller.dart';
import 'package:vpeepalvoappoct/3_controllers/0.1_login_controller.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/0_offlinepage.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/1_landingpage.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/managevos.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final networkManager = GetXNetworkManager();
  Get.put(LoginController());
  networkManager.checkStatus();
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
      home: LandingPage(),
      routes: {
        '/landingpage': (context) => LandingPage(),
        '/homepage': (context) => HomePage(),
        '/nologinofflinescreen': (context) => OfflinePage(),
        '/manageVOs': (context) => ManageVOPage(),
      },
    );
  }
}
