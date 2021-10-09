import 'package:flutter/material.dart';

class OfflinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333040),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                'You are offline. \nKindly ensure that you have an active internet connection to proceed',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Image(
              image: AssetImage(
                'lib/7_assets/nointernet.gif',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
