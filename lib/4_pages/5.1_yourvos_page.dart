import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_vodisplaycard.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/global_page_container_widget.dart';
import 'package:get/get.dart';

class ViewYourVOsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalPageContainerWidget(
      appBarText: 'My Voluntary Organizations'.tr,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            VODisplayCard(),
            VODisplayCard(),
            VODisplayCard(),
            VODisplayCard(),
            VODisplayCard(),
          ],
        ),
      ),
    );
  }
}
