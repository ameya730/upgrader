import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/1.2_viewdetailstextfield.dart';

class ViewProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://wolftracker9eee.blob.core.windows.net/wolfpictures-mock/wolf3.png',
            ),
            radius: 90,
          ),
        ),
        VoDetailsField(
          labelText: 'First Name',
          initialValue: 'Afjke',
        ),
        VoDetailsField(
          labelText: 'Last Name',
          initialValue: 'Yeuet',
        ),
        VoDetailsField(
          labelText: 'Email',
          initialValue: 'xyz@uy.com',
        ),
        VoDetailsField(
          labelText: 'Contact Number',
          initialValue: '1234567890',
        ),
        VoDetailsField(
          labelText: 'Address Line 1',
          initialValue: 'Flat 2,ABS Building',
        ),
        VoDetailsField(
          labelText: 'City',
          initialValue: 'Pune',
        ),
        VoDetailsField(
          labelText: 'State',
          initialValue: 'Maharashtra',
        ),
      ],
    );
  }
}
