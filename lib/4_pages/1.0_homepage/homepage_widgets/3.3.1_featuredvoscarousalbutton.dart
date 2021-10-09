import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/3.3.2_individualcarousel.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class FeaturedVOsCarousalButton extends StatelessWidget {
  final String? mainLabel;
  final String? cardName;

  FeaturedVOsCarousalButton({
    this.mainLabel,
    this.cardName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Colors.teal,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                    child: Text(
                      mainLabel!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              mainLabel!,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content: Text(
                              'This section contains the list of top 5 VOs having 32G certificate'
                                  .tr,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            actions: [
                              CElevatedButton(
                                buttonLabel: 'Ok'.tr,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 8.0),
                      child: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: IndividualVOCarousalButton(
                cardName: cardName!,
              ),
            )
          ],
        ),
      ),
    );
  }
}
