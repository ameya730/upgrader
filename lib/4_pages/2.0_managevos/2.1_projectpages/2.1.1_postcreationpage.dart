import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class PostProjectCreation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 96.0,
                      top: 64.0,
                    ),
                    child: Image.asset(
                      'lib/7_assets/verifyproject.gif',
                      alignment: Alignment.topRight,
                      // fit: BoxFit.fitWidth,
                      height: MediaQuery.of(context).size.height,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 24.0,
                        bottom: 12.0,
                      ),
                      child: Material(
                        elevation: 20,
                        color: backGroundColor,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.52,
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  'You have created your project',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: CElevatedButton(
                                  buttonLabel: 'Add Targets',
                                  onPressed: () {
                                    Get.toNamed('/projecttarget');
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: CElevatedButton(
                                  buttonLabel: 'Add Images',
                                  onPressed: () {
                                    Get.toNamed('/projectimages');
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Container(
                                  width: 170,
                                  child: Card(
                                    elevation: 15,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 16.0),
                                          child: Text(
                                            'Verify Project',
                                            style: TextStyle(
                                              color: blackColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 4.0, left: 16.0),
                                          child: Container(
                                            width: 110,
                                            child: Text(
                                              'Tick here if you want us to verify your project.',
                                              style: TextStyle(fontSize: 8),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Checkbox(
                                            value: false,
                                            onChanged: (value) {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: CElevatedButton(
                                  buttonLabel: 'Publish Project',
                                  onPressed: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text(
                                            'Project Published',
                                            style: TextStyle(
                                              color: blackColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          content: Text(
                                            'Your project will now be viewable by all donors.',
                                            style: TextStyle(
                                              color: blackColor,
                                              fontSize: 9,
                                            ),
                                          ),
                                          actions: [
                                            TextButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: FaIcon(
                                                FontAwesomeIcons.thumbsUp,
                                                color: blackColor,
                                                size: 12,
                                              ),
                                              label: Text(
                                                'Ok',
                                                style: TextStyle(
                                                  color: blackColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Card(
                                  elevation: 15,
                                  child: TextButton.icon(
                                    onPressed: () {
                                      Get.offAndToNamed('/manageVOs');
                                    },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: blackColor,
                                      size: 28,
                                    ),
                                    label: Text(
                                      'Return to \nproject page',
                                      softWrap: true,
                                      style: TextStyle(
                                        color: blackColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
