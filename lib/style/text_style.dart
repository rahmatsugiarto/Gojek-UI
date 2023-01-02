import 'package:flutter/material.dart';

import '../resources/fonts.gen.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle regular12({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: FontFamily.sFProDisplay,
      fontSize: 12.5,
      color: color,
    );
  }

  static TextStyle regular14({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: FontFamily.sFProDisplay,
      fontSize: 14,
      color: color,
    );
  }

  static TextStyle semibold12({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: FontFamily.sFProDisplay,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle semibold14({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: FontFamily.sFProDisplay,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle bold16({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: FontFamily.sFProDisplay,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle bold18({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: FontFamily.sFProDisplay,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }
}
