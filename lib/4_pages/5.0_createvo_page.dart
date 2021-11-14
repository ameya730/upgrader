import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/3_controllers/2.1_vocreation_controller.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/global_page_container_widget.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/9_widgets/3_vocreation_widgets/1_voprofile_card_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/3_vocreation_widgets/3_vocreationfirstwidget.dart';
import 'package:vpeepalvoappoct/9_widgets/3_vocreation_widgets/2_vocreationnavrow.dart';
import 'package:vpeepalvoappoct/9_widgets/3_vocreation_widgets/4_vocreationsecondwidget.dart';
import 'package:vpeepalvoappoct/9_widgets/3_vocreation_widgets/5_vocreationthirdpage.dart';
import 'package:vpeepalvoappoct/9_widgets/3_vocreation_widgets/6_vocreationfourthpage.dart';
import 'package:vpeepalvoappoct/9_widgets/3_vocreation_widgets/7_vocreationsavesubmitwidget.dart';

class CreateVOPage extends StatelessWidget {
  final voCreationControl = Get.put(VoCreationController());
  final List voCreationPages = [
    VoCreationFirstWidget(),
    VoCreationSecondWidget(),
    VoCreationThirdWidget(),
    VoCreationFourthWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return GlobalPageContainerWidget(
      appBarText: 'Create your VO profile'.tr,
      body: CustomScrollView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: VoCreationNavRow(),
                ),
                Expanded(
                  child: Container(
                    child: Obx(
                      () => voCreationPages[voCreationControl.voPage.value],
                    ),
                  ),
                ),
                VoCreationSaveSubmitRow(),
                VOProfileCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
