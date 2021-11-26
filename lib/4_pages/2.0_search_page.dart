import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/1.0_search_controller.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/global_page_container_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/3_search_widgets/0_search_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/3_search_widgets/1_advancedsearch_widget.dart';

class SearchPage extends StatelessWidget {
  final searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return GlobalPageContainerWidget(
      appBarText: 'Search',
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black87,
                  ),
                ),
                Obx(
                  () => searchController.advancedSearch.value
                      ? AdvancedSearch()
                      : SearchWidget(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
