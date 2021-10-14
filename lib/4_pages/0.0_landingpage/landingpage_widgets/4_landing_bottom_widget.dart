import 'package:flutter/material.dart';

class LandingPageBottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 240,
          width: 400,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Image(
            image: AssetImage(
              'lib/7_assets/vpeepalhomepageicon.gif',
            ),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
