import 'package:flutter/material.dart';

class OrderButtonStyle {
  static final regularButtonStyle = ButtonStyle(
    overlayColor:
        MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (states.contains(MaterialState.focused)) return Colors.red;
      return null; // Defer to the widget's default.
    }),
  );
}
