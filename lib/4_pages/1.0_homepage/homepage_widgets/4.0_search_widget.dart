import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/1.0_vobasicdetails_controller.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/4.1_seevodetailspage.dart';

class SearchWidget extends StatelessWidget {
  final voDetailsController = Get.put(VODetailsController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return voDetailsController.listObtained.value
          ? SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: voDetailsController.voDetailsList.length,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 12.0,
                      right: 12.0,
                      top: 2.0,
                      bottom: 2.0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        voDetailsController.voId.value = i;
                        voDetailsController.seeVODetail.value = true;
                        Get.to(SeeVODetailsPage());
                      },
                      child: Card(
                        borderOnForeground: true,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              voDetailsController.voDetailsList[i].vOPhoto
                                  .toString(),
                            ),
                          ),
                          title: Text(
                            voDetailsController.voDetailsList[i].vOName
                                .toString(),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            voDetailsController.voDetailsList[i].certificateType
                                .toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            );
    });
  }
}
