import 'package:flutter/material.dart';

class VoDetailsField extends StatelessWidget {
  final String? initialValue;
  final String? labelText;

  VoDetailsField({
    this.initialValue,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        top: 4.0,
        bottom: 4.0,
      ),
      child: TextFormField(
        initialValue: initialValue,
        style: TextStyle(fontSize: 10),
        decoration: InputDecoration(
          enabled: false,
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
