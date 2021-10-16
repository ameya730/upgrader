import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/3_controllers/2.3_myvos_controller.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';
import 'package:get/get.dart';

class CreateVOWidget extends StatelessWidget {
  final myVoController = Get.put(MyVOsController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CElevatedButton(
              buttonLabel: 'Create VO',
              onPressed: () {
                Get.toNamed('/createVO');
              },
            ),
          ),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: myVoController.myVosList.length,
              itemBuilder: (BuildContext context, int i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(
                          4.0,
                        ),
                        title: Text(
                          myVoController.myVosList[i].projectName.toString(),
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
