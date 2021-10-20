import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.4_projecttargets_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class ShowTargetsWidget extends StatelessWidget {
  final ProjectTargetController targetControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListView.builder(
          itemCount: targetControl.targetNameList.length,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment:
                    i.isEven ? MainAxisAlignment.end : MainAxisAlignment.start,
                crossAxisAlignment: i.isEven
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Material(
                    elevation: 5,
                    child: Container(
                      height: 25,
                      width: MediaQuery.of(context).size.width * 0.4,
                      color: alternateBackGroundColor,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            targetControl.targetTypeList[i],
                            style: TextStyle(
                              color: backGroundColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    elevation: 5,
                    child: Row(
                      children: [
                        Material(
                          elevation: 0,
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.35,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //1st Column
                                  //1st container for target name
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4.0, bottom: 8.0),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Target Name',
                                              style: TextStyle(
                                                color: blackColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              targetControl.targetNameList[i],
                                              style: TextStyle(
                                                color: blackColor,
                                                fontSize: 9,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //2nd container for target amount
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4.0, bottom: 4.0),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Target Amount',
                                              style: TextStyle(
                                                color: blackColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              targetControl.targetAmountList[i],
                                              style: TextStyle(
                                                color: blackColor,
                                                fontSize: 9,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //3rd container for target quantity
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4.0, bottom: 8.0),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Target Quantity',
                                              style: TextStyle(
                                                color: blackColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              targetControl
                                                  .targetQuantityList[i],
                                              style: TextStyle(
                                                color: blackColor,
                                                fontSize: 9,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //2nd Column
                        Expanded(
                          child: Material(
                            elevation: 0,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  bottom: 8.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //1st Column
                                    //1st container for target name
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 4.0, bottom: 8.0),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                'Target Description',
                                                style: TextStyle(
                                                  color: blackColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 100,
                                              child: Text(
                                                targetControl
                                                    .targetDescriptionList[i],
                                                style: TextStyle(
                                                  color: blackColor,
                                                  fontSize: 9,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  targetControl.deleteDataFromList(i);
                                },
                                icon: Icon(
                                  Icons.delete,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
