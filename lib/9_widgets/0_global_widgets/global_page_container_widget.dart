import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/drawer_widget.dart';

class GlobalPageContainerWidget extends StatelessWidget {
  final String? appBarText;
  final body;
  final floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final actions;
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  GlobalPageContainerWidget({
    this.appBarText,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: DrawerWidget(),
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: Container(
                width: 40,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Icon(
                    Icons.menu,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: backGroundColor,
          shadowColor: Colors.transparent,
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                Get.offNamed('/searchpage');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 40,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Icon(
                      Icons.search,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
          title: Text(
            appBarText!,
            style: TextStyle(
              color: greyTextFormFieldLabel,
              fontFamily: fontFamilyCandara,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: backGroundColor,
        body: body,
      ),
    );
  }
}
