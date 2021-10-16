import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_getxnetworkmanager.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/0_offlinepage.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_landingpage/1_landingpage.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () {
        final networkManager = Get.put(GetXNetworkManager());
        if (networkManager.firstPage.value == '/homepage') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        } else if (networkManager.firstPage.value == '/landingpage') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LandingPage(),
            ),
          );
        } else if (networkManager.firstPage.value == '/nologinofflinescreen') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OfflinePage(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'V',
                style: TextStyle(
                  color: backGroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              Text(
                'E',
                style: TextStyle(
                  color: backGroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              Text(
                'E',
                style: TextStyle(
                  color: backGroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              Text(
                'P',
                style: TextStyle(
                  color: backGroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              Text(
                'L',
                style: TextStyle(
                  color: backGroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              Text(
                'E',
                style: TextStyle(
                  color: backGroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
