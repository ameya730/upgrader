import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.3.0_singlevo_widget.dart';

class FeaturedCard extends StatelessWidget {
  final String? cardLabel;
  FeaturedCard({
    this.cardLabel,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      // elevation: 5,
      // borderRadius: BorderRadius.circular(5),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(5),
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: primaryColor.withOpacity(0.5),
                  width: 0.4,
                ),
              ),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleVOWidget(
                        label: 'Voluntary Organization 1',
                      ),
                      SingleVOWidget(
                        label: 'Voluntary Organization 2',
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SingleVOWidget(
                      label: 'Voluntary Organization 3',
                    ),
                    SingleVOWidget(
                      label: 'Voluntary Organization 4',
                    ),
                    SingleVOWidget(
                      label: 'Voluntary Organization 5',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              border: Border.all(
                color: primaryColor.withOpacity(0.5),
                width: 0.4,
              ),
              color: primaryColor,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                cardLabel!,
                style: TextStyle(
                  color: backGroundColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
