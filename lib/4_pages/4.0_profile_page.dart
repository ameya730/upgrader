import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/global_page_container_widget.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/9_widgets/2_profilepage_widgets/2.0_profile_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalPageContainerWidget(
      appBarText: 'Profile'.tr,
      body: ViewProfilePage(),
    );
  }
}
