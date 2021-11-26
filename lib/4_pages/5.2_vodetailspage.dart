import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/3_controllers/4.0_vodetails_controller.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/global_page_container_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/navigation_row_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/2_vo_widgets/3_vodetails_first_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/2_vo_widgets/4_vodetails_name_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/2_vo_widgets/4_vodetails_project_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/2_vo_widgets/4_vodetails_second_widget.dart';
import 'package:get/get.dart';

class VODetailsPage extends StatelessWidget {
  final List _pages = [
    VoDetailsFirstWidget(),
    VoDetailsSecondWidget(),
  ];
  final VoDetailsController _controller = Get.put(VoDetailsController());
  @override
  Widget build(BuildContext context) {
    return GlobalPageContainerWidget(
      appBarText: 'My Voluntary Organization',
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              VoDetailsNameWidget(),
              VoDetailsProjectWidget(),
              Obx(
                () => _pages[_controller.activePage.value],
              ),
              NavigationRowWidget(
                backPress: () {
                  _controller.activePage.value = 0;
                },
                frontPress: () {
                  _controller.activePage.value = 1;
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
