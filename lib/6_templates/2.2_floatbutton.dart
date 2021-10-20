import 'package:flutter/material.dart';

class CustomFloatButton extends StatelessWidget {
  final onPressed;
  final Color? floatButtonColor;
  final icon;
  final String? floatLabel;

  CustomFloatButton({
    this.onPressed,
    this.floatButtonColor,
    this.icon,
    this.floatLabel,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      backgroundColor: floatButtonColor,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            icon,
            Text(
              floatLabel!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
