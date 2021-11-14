import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/3_controllers/2.1_vocreation_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/9_widgets/3_vocreation_widgets/0_vocard_tile_widget.dart';
import 'package:get/get.dart';

class VOProfileCard extends StatelessWidget {
  final VoCreationController voCreationControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Material(
                elevation: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: primaryColor.withOpacity(0.5),
                      width: 0.4,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 2.0,
                      right: 2.0,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.55,
                                child: VoCardListTile(
                                  title: 'VO Name'.tr,
                                  subTitle: voCreationControl.voName.value,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: VoCardListTile(
                                  title: 'Established On'.tr,
                                  subTitle:
                                      voCreationControl.establishedOn.value,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: VoCardListTile(
                                title: 'Status'.tr,
                                subTitle: voCreationControl.voStatus.value,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: VoCardListTile(
                                title: 'Registration Number'.tr,
                                subTitle:
                                    voCreationControl.registrationNo.value,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: VoCardListTile(
                                title: 'Email'.tr,
                                subTitle: voCreationControl.voEmail.value,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: VoCardListTile(
                                title: 'Mobile'.tr,
                                subTitle: voCreationControl.voMobile.value,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: VoCardListTile(
                                title: 'Address'.tr,
                                subTitle: voCreationControl.voAddress.value,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: VoCardListTile(
                                title: 'Taluka/Suburb'.tr,
                                subTitle: voCreationControl.voTaluka.value,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: VoCardListTile(
                                title: 'City/District'.tr,
                                subTitle: voCreationControl.voCity.value,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: VoCardListTile(
                                title: 'Pincode'.tr,
                                subTitle: voCreationControl.voPincode.value,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: VoCardListTile(
                              title: 'State'.tr,
                              subTitle: voCreationControl.voState.value,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: VoCardListTile(
                                title: 'VO Description'.tr,
                                subTitle: voCreationControl.voDescription.value,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
