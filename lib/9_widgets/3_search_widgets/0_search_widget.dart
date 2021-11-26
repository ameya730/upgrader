import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/3_controllers/1.0_search_controller.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/1.4_searchinputfield.dart';
import 'package:vpeepalvoappoct/6_templates/5.0_tags.dart';

class SearchWidget extends StatelessWidget {
  final GlobalKey<FormState> _key = new GlobalKey<FormState>();
  final SearchController searchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: whiteColor,
      child: Form(
        key: _key,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: SearchInputField(
                    label: 'Search by vo or project name',
                    onChanged: (value) {},
                  ),
                ),
                CustomTags(
                  tagName: 'Advanced Search',
                  onPressed: () {
                    searchController.advancedSearch.value = true;
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomTags(
                      tagName: 'VOs',
                    ),
                    CustomTags(
                      tagName: 'Projects',
                    ),
                    CustomTags(
                      tagName: 'VOs near you',
                    ),
                    CustomTags(
                      tagName: 'Projects near you',
                    ),
                    CustomTags(
                      tagName: 'FCRA Certified VOs',
                    ),
                    CustomTags(
                      tagName: '80G Certified VOs',
                    ),
                    CustomTags(
                      tagName: 'Highest Donated VOs',
                    ),
                    CustomTags(
                      tagName: 'Highest Donated Projects',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
