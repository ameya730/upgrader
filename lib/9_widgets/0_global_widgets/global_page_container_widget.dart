import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/drawer_widget.dart';

class GlobalPageContainerWidget extends StatelessWidget {
  final String? appBarText;
  final body;
  final floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final actions;

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
        drawer: DrawerWidget(),
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: primaryColor,
          shadowColor: Colors.transparent,
          centerTitle: true,
          actions: actions,
          title: Text(
            appBarText!,
            style: TextStyle(
              color: backGroundColor,
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
