import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/3_controllers/2.0_vocreation_controller.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/global_page_container_widget.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/9_widgets/2_vo_widgets/1_vocreationfirstpage_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/2_vo_widgets/2_vocreationseconpage_widget.dart';

class CreateVOPage extends StatelessWidget {
  final voCreationControl = Get.put(VoCreationController());
  final List voCreationPages = [
    VOCreationFirstPage(),
    VOCreationSecondPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return GlobalPageContainerWidget(
      appBarText: 'New Voluntary Organization'.tr,
      body: CustomScrollView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Obx(
                      () => voCreationPages[voCreationControl.voPage.value],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
