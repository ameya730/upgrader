import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class FeaturedVOsCarousal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (
        BuildContext context,
        int i,
        int y,
      ) {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                      child: Text(
                        'Featured VOs',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
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
                                'Featured VOs'.tr,
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
                FeaturedCarousalCard(
                  icon: Icons.person,
                  cardName: 'VO 1',
                ),
                FeaturedCarousalCard(
                  icon: Icons.card_giftcard,
                  cardName: 'VO 2',
                  cardWidth: MediaQuery.of(context).size.width,
                ),
                FeaturedCarousalCard(
                  icon: Icons.home,
                  cardName: 'VO 3',
                  cardWidth: MediaQuery.of(context).size.width,
                ),
                FeaturedCarousalCard(
                  icon: Icons.logout,
                  cardName: 'VO 4',
                  cardWidth: MediaQuery.of(context).size.width,
                ),
                FeaturedCarousalCard(
                  icon: Icons.select_all,
                  cardName: 'VO 5',
                  cardWidth: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 480,
        viewportFraction: 0.7,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
      ),
    );
  }
}

class FeaturedCarousalCard extends StatelessWidget {
  final IconData? icon;
  final String? cardName;
  final double? cardWidth;

  FeaturedCarousalCard({
    @required this.icon,
    @required this.cardName,
    this.cardWidth = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        top: 8.0,
        bottom: 8.0,
      ),
      child: Container(
        width: cardWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black,
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                cardName!,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
