import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/1.0_vobasicdetails_controller.dart';
import 'package:vpeepalvoappoct/4_pages/1.0_homepage/homepage_widgets/search_widgets/4.1_seevodetailspage.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.3_searchtextfield.dart';
import 'package:vpeepalvoappoct/6_templates/2.0_button.dart';

class SearchWidget extends StatelessWidget {
  final voDetailsController = Get.put(VODetailsController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return voDetailsController.listObtained.value
          ? SingleChildScrollView(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 64.0,
                      bottom: 32.0,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: voDetailsController.filteredSearchList.length,
                      itemBuilder: (BuildContext context, int i) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 12.0,
                            right: 12.0,
                            top: 4.0,
                            bottom: 4.0,
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
                                    voDetailsController
                                        .filteredSearchList[i].vOPhoto
                                        .toString(),
                                  ),
                                ),
                                title: Text(
                                  voDetailsController
                                      .filteredSearchList[i].vOName
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  voDetailsController
                                      .filteredSearchList[i].certificateType
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
                  ),
                  Container(
                    child: Obx(() {
                      return voDetailsController.searchEnabled.value
                          ? Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.black87,
                              child: Column(
                                children: [
                                  CElevatedButton(
                                    buttonLabel: 'Search'.tr,
                                    onPressed: () {
                                      voDetailsController.searchEnabled.value =
                                          false;
                                    },
                                  ),
                                ],
                              ),
                            )
                          : Center(
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SearchField(
                                  labelText:
                                      'Quick Search [Search via vo name or certificate type]'
                                          .tr,
                                  onChanged: (value) async {
                                    voDetailsController
                                        .quickSearchActive.value = true;
                                    voDetailsController.filteredValue.value =
                                        value;
                                    print(value);
                                    await voDetailsController.filterList();
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {
                                    voDetailsController.searchEnabled.value =
                                        true;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: appBarColor,
                                    ),
                                    height: 45,
                                    width: 55,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(
                                          'Detailed \nFilter',
                                          style: TextStyle(
                                            fontSize: 9,
                                            color: backGroundColor,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ));
                    }),
                  ),
                ],
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            );
    });
  }
}
