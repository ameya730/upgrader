import 'package:flutter/material.dart';
import 'package:vpeepalvoappoct/6_templates/0.0_constants.dart';

class CustomPasswordField extends StatelessWidget {
  final onSaved;
  final onChanged;
  final IconData? icon;
  final bool obscureText;
  final onPressed;
  final String? label;
  final String? hintText;

  CustomPasswordField({
    this.onSaved,
    this.onChanged,
    this.icon,
    this.obscureText = false,
    this.onPressed,
    this.label,
    this.hintText = '',
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 16.0,
        right: 16.0,
      ),
      child: Material(
        elevation: 5,
        color: backGroundColor,
        borderRadius: BorderRadius.circular(5),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 12.0),
          child: Stack(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      label!,
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: blackColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Container(
                      height: 25,
                      child: TextFormField(
                        onSaved: onSaved,
                        onChanged: onChanged,
                        obscureText: obscureText,
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 12,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hintText!,
                          hintStyle: TextStyle(
                            color: cherryColor,
                            fontSize: 12,
                          ),
                          errorStyle: TextStyle(
                            fontSize: 8,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 25,
                  child: IconButton(
                    icon: Icon(
                      icon,
                    ),
                    onPressed: onPressed,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
