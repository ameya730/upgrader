import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/6_templates/6.0_styletemplates.dart';
import 'package:vpeepalvoappoct/9_widgets/0_global_widgets/global_page_container_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/0_top_widget.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/1_horizontalscrolling_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalPageContainerWidget(
      appBarText: ''.tr,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              HomePageTopWidget(),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(whiteColor),
                  elevation: MaterialStateProperty.all(5),
                ),
                child: Text(
                  'Top Doners of the Week',
                  style: headingStyle,
                ),
              ),
              HorizontalScrollingWidget(
                widgetLabel: 'Top 5 VOs',
                image1: 'lib/7_assets/images/vo1.jpg',
                label1: 'Chatrapati Society',
                image2: 'lib/7_assets/images/vo2.jpg',
                label2: 'Faandi',
                image3: 'lib/7_assets/images/vo3.jpeg',
                label3: 'Paani Foundation',
                image4: 'lib/7_assets/images/vo4.jpg',
                label4: 'Chhat',
                image5: 'lib/7_assets/images/vo5.jpg',
                label5: 'Matoshri',
              ),
              HorizontalScrollingWidget(
                widgetLabel: 'Top 5 Projects',
                image1: 'lib/7_assets/images/project1.png',
                label1: 'Save Nature',
                image2: 'lib/7_assets/images/project2.jpg',
                label2: 'Develop Torna to Rajgad',
                image3: 'lib/7_assets/images/project3.jpg',
                label3: 'Narmada Bachao',
                image4: 'lib/7_assets/images/project4.jpg',
                label4: 'Feed the hungry',
                image5: 'lib/7_assets/images/project5.jpg',
                label5: 'Provide blankets to Orphange',
              ),
              HorizontalScrollingWidget(
                widgetLabel: 'Recently Added Projects',
                image1: 'lib/7_assets/images/rproject1.jpg',
                label1: 'Laptops for Children',
                image2: 'lib/7_assets/images/rproject2.jpg',
                label2: 'Built Library in Matorshi',
                image3: 'lib/7_assets/images/rproject3.jpg',
                label3: 'Save Water',
                image4: 'lib/7_assets/images/rproject4.jpg',
                label4: 'Help Displaced People',
                image5: 'lib/7_assets/images/rproject5.jpg',
                label5: 'Save Mangroves',
              ),
              // HorizontalScrollingWidget(
              //   widgetLabel: 'Top Donations',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
