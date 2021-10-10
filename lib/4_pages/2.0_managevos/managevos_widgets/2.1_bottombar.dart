import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/2.0_managevospage_controller.dart';
import 'package:vpeepalvoappoct/4_pages/2.0_managevos/managevos_widgets/2.1_bottombarbutton.dart';

class ManageVOBottomBar extends StatelessWidget {
  final bottomController = Get.put(ManageVOPagesController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff426e86).withOpacity(1),
            Colors.white.withOpacity(0.1),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          elevation: 20,
          notchMargin: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              VOBottomBarWidgetButton(
                indexValue: 0,
                icon: Icons.person,
                buttonLabel: 'Profile',
                onTap: () {
                  bottomController.voPage.value = 0;
                },
              ),
              VOBottomBarWidgetButton(
                indexValue: 1,
                icon: Icons.search,
                buttonLabel: 'Search',
                onTap: () {
                  bottomController.voPage.value = 1;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
