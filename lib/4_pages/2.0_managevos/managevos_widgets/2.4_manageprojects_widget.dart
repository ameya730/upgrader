import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/3_controllers/2.2_manageprojects_controller.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';
import 'package:get/get.dart';

class CreateProjectWidget extends StatelessWidget {
  final projectController = Get.put(ManageProjectsController());
  final List projectStatus = [
    'Unpublished',
    'Published',
    'Completed',
    'Closed',
    'Cancelled',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 24.0,
              bottom: 16.0,
            ),
            child: CElevatedButton(
              buttonLabel: 'Create Project',
              onPressed: () {
                Get.toNamed('/createproject');
              },
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: projectController.projectList.length,
              itemBuilder: (BuildContext context, int i) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(
                          4.0,
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            projectController.projectList[i].projectPhoto
                                .toString(),
                          ),
                        ),
                        title: Text(
                          projectController.projectList[i].projectName
                              .toString(),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          projectController.projectList[i].projectDescription
                              .toString(),
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
