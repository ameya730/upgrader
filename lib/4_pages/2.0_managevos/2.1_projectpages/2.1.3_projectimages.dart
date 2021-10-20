import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.5_projectimage_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class ProjectImagePage extends StatelessWidget {
  final imageControl = Get.put(ProjectImageController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          title: Text(
            'Upload Images'.tr,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: backGroundColor,
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => imageControl.gotImage.value
                  ? Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: FloatingActionButton(
                        onPressed: () async {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Images saved to project'.tr),
                            ),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        backgroundColor: cherryColor,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.save,
                              ),
                              Text(
                                'Save'.tr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container(
                      width: 0,
                      height: 0,
                    ),
            ),
            FloatingActionButton(
              onPressed: () async {
                await imageControl.getImage();
                imageControl.gotImage.value = true;
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              backgroundColor: alternateBackGroundColor,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.camera_alt,
                    ),
                    Text(
                      'Add Images'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(() {
                  return imageControl.gotImage.value
                      ? Padding(
                          padding: const EdgeInsets.only(
                            top: 16.0,
                            bottom: 64.0,
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: imageControl.selectedImagePath.length,
                            itemBuilder: (BuildContext context, int i) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Material(
                                  elevation: 20,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.6,
                                          child: Image.file(
                                            File(
                                              imageControl
                                                  .selectedImagePath[i].path!,
                                            ),
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 32.0),
                                        child: IconButton(
                                          onPressed: () {
                                            File(
                                              imageControl
                                                  .selectedImagePath[i].path!,
                                            ).delete();
                                            imageControl.deleteImage(i);
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content:
                                                    Text('Image deleted'.tr),
                                              ),
                                            );
                                          },
                                          icon: Icon(Icons.delete),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      : Container(
                          child: Text('No image uploaded'),
                        );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
