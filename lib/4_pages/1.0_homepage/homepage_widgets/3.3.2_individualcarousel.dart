import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class IndividualVOCarousalButton extends StatelessWidget {
  final String? cardName;
  final String? imageName;

  IndividualVOCarousalButton({
    this.cardName,
    this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int y, int z) {
        return Column(
          children: [
            Expanded(
              child: Image.network(
                imageName!,
                fit: BoxFit.scaleDown,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: textFieldColor),
                  color: textFieldColor,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45.0),
                    child: Text(
                      cardName!,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        scrollDirection: Axis.vertical,
        enlargeCenterPage: false,
        viewportFraction: 1,
        height: 200,
      ),
    );
  }
}
