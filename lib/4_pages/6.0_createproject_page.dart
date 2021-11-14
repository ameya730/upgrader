import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/3.0_projectcreation_controller.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/global_page_container_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/4_projectcreation_widgets/0_projectcreationform_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/4_projectcreation_widgets/1_projectcreationsavesubmit_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/4_projectcreation_widgets/2_projectcreationnavrow_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/4_projectcreation_widgets/3_projectcreationgetimages_widget.dart';

class ProjectCreation extends StatelessWidget {
  final projectCreationControl = Get.put(ProjectCreationController());
  final List projectPages = [
    ProjectCreationFormWidget(),
    GetProjectImagesWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return GlobalPageContainerWidget(
      appBarText: 'Create A New Project',
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProjectCreationNavRow(),
              Obx(
                () => projectPages[projectCreationControl.projectPage.value],
              ),
              ProjectCreationSaveSubmitRow(),
            ],
          ),
        ),
      ),
    );
  }
}
