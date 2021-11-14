import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/3.0_projectcreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';

class GetProjectImagesWidget extends StatelessWidget {
  final ProjectCreationController projectCreationControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        () => projectCreationControl.gotImage.value
            ? Column(
                children: [
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                    ),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount:
                        projectCreationControl.selectedImagePath.length + 1,
                    itemBuilder: (BuildContext context, int i) {
                      return i ==
                              projectCreationControl.selectedImagePath.length
                          ? Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: TextButton.icon(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    // elevation: MaterialStateProperty.all(2),
                                  ),
                                  label: Text(
                                    'Get Images',
                                    style: buttonTextStyle,
                                  ),
                                  onPressed: () async {
                                    await projectCreationControl.getImage();
                                    projectCreationControl.gotImage.value =
                                        true;
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.photoVideo,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: Image.file(
                                        File(
                                          projectCreationControl
                                              .selectedImagePath[i].path!,
                                        ),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      File(
                                        projectCreationControl
                                            .selectedImagePath[i].path!,
                                      ).delete();
                                      projectCreationControl.deleteImage(i);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text('Image deleted'.tr),
                                        ),
                                      );
                                    },
                                    icon: Icon(Icons.delete),
                                  ),
                                ],
                              ),
                            );
                    },
                  ),
                ],
              )
            : TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(2),
                ),
                label: Text(
                  'Get Images',
                  style: buttonTextStyle,
                ),
                onPressed: () async {
                  await projectCreationControl.getImage();
                  projectCreationControl.gotImage.value = true;
                },
                icon: FaIcon(
                  FontAwesomeIcons.photoVideo,
                  color: primaryColor,
                ),
              ),
      ),
    );
  }
}
