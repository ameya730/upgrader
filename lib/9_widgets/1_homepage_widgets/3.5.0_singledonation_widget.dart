import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class SingleDonationWidget extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final String? donationAmount;

  SingleDonationWidget({
    this.label,
    this.icon,
    this.donationAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(5),
        color: backGroundColor,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        label!,
                        softWrap: true,
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Material(
              elevation: 5,
              color: primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              child: Container(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    donationAmount!,
                    style: TextStyle(
                      color: backGroundColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
