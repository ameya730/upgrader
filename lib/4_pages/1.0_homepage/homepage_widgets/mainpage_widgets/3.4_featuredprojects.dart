import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';
import 'package:get/get.dart';

class HomeMainFeaturedProjectsCarousal extends StatelessWidget {
  final List projectList = [
    'Project 1',
    'Project 2',
    'Project 3',
    'Project 4',
    'Project 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 8.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.2),
          ),
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
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 24.0,
                right: 24.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Featured Projects'.tr,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              'Featured Projects'.tr,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content: Text(
                              'This section contains the list of top trending projects'
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
                    child: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int i, int y) {
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 16.0,
                    ),
                    child: Card(
                      borderOnForeground: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ListTile(
                          title: Text(
                            projectList[i],
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: 100,
                viewportFraction: 0.77,
                scrollDirection: Axis.horizontal,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
