import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/0.0_getxnetworkmanager.dart';
import 'package:vpeepalvoappoct/4_pages/0.0_offlinepage.dart';
import 'package:vpeepalvoappoct/4_pages/3.0_homepage.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_landingpage.dart';
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
        backgroundColor: backGroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 128.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/7_assets/images/vpeepleicon.png'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'V',
                          style: TextStyle(
                            fontFamily: 'Harlow',
                            color: primaryColor,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'peeple',
                          style: TextStyle(
                            fontFamily: 'Chaparral',
                            color: blackColor,
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            shadows: [
                              Shadow(
                                blurRadius: 1.0,
                                color: blackColor,
                              ),
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 3.0,
                                color: blackColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Version 1.0.0',
                      style: TextStyle(
                        fontFamily: 'Chaparral',
                        color: greyColor,
                        fontSize: 9,
                      ),
                    )
                  ],
                ),
              ),
              Image.asset('lib/7_assets/images/splashscreenbottomimage.png'),
            ],
          ),
        ),
      ),
    );
  }
}
