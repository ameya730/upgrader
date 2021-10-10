import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String? labelText;
  final onChanged;
  final onSaved;
  final validator;

  SearchField({
    this.labelText,
    this.onChanged,
    this.onSaved,
    this.validator,
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
      child: Container(
        width: 280,
        child: TextFormField(
          onChanged: onChanged,
          onSaved: onSaved,
          validator: validator,
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
            enabled: true,
            hintText: labelText,
            hintStyle: TextStyle(
              fontSize: 9,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
