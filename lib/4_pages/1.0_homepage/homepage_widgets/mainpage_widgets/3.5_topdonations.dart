import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class HomeMainTopDonationsCarousal extends StatelessWidget {
  final List projectList = [
    'Project 1',
    'Project 2',
    'Project 3',
    'Project 4',
    'Project 5',
  ];

  final List donationAmount = [
    '298802',
    '38719',
    '30399',
    '2345',
    '2000',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 44.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.2),
          ),
          gradient: LinearGradient(
            colors: [
              Colors.teal.withOpacity(0.8),
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
                    'Top Donations of the Month'.tr,
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
                              'Top Donations'.tr,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content: Text(
                              'This section contains the list of top donations for the month'
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
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 24.0,
                right: 24.0,
                bottom: 16.0,
              ),
              child: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                itemCount: 5,
                itemBuilder: (BuildContext context, int i) {
                  return Card(
                    borderOnForeground: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      title: Text(
                        projectList[i],
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      subtitle: Text(
                        donationAmount[i],
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (int i) =>
                    StaggeredTile.fit((i == 0) ? 2 : 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
