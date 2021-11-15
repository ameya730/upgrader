import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';
import 'package:vpeepalvoappoct/9_widgets/1_homepage_widgets/3.5.0_singledonation_widget.dart';

class TopDonationsWidget extends StatelessWidget {
  final String? cardLabel;
  TopDonationsWidget({
    this.cardLabel,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Flexible(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: primaryColor.withOpacity(0.5),
                  width: 0.4,
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SingleDonationWidget(
                          icon: Icons.water,
                          label: 'Paani Foundation',
                          donationAmount: '5000.00',
                        ),
                        SingleDonationWidget(
                          icon: Icons.food_bank,
                          label: 'Every stomach is filled',
                          donationAmount: '12,830.00',
                        ),
                        SingleDonationWidget(
                          icon: Icons.directions_bus_outlined,
                          label: 'Transport for all',
                          donationAmount: '1,40,830.00',
                        ),
                        SingleDonationWidget(
                          icon: Icons.search,
                          label: 'Provide Assistance',
                          donationAmount: '30,630.00',
                        ),
                        SingleDonationWidget(
                          icon: Icons.music_note,
                          label: 'Donate Guitars',
                          donationAmount: '1,630.00',
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SingleDonationWidget(
                          icon: Icons.water,
                          label: 'Jal Niti',
                          donationAmount: '2,300.00',
                        ),
                        SingleDonationWidget(
                          icon: Icons.food_bank,
                          label: 'Donate Blankets',
                          donationAmount: '1,830.00',
                        ),
                        SingleDonationWidget(
                          icon: Icons.directions_bus_outlined,
                          label: 'Transport for all',
                          donationAmount: '1,40,830.00',
                        ),
                        SingleDonationWidget(
                          icon: Icons.search,
                          label: 'Provide Assistance',
                          donationAmount: '30,630.00',
                        ),
                        SingleDonationWidget(
                          icon: Icons.sports_football,
                          label: 'Sport Goods for Children',
                          donationAmount: '30,630.00',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.5,
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
