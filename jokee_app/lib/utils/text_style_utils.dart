import 'package:flutter/material.dart';

class TextStyleUtils {
  static TextStyle bold(double fontSize) => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
      );
  static TextStyle medium(double fontSize) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
      );
  static TextStyle regular(double fontSize) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: fontSize + 4,
      );
}
