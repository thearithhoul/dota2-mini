import 'package:flutter/material.dart';

import 'font_family.dart';

enum FontType { extraLarge, large, header, titel, subtitle, lable }

extension FontTypeExtension on FontType {
  double get size {
    switch (this) {
      case FontType.extraLarge:
        return 32;
      case FontType.large:
        return 24;
      case FontType.header:
        return 19;
      case FontType.titel:
        return 17;
      case FontType.subtitle:
        return 15;
      case FontType.lable:
        return 13;
    }
  }
}

class MYTEXTSTYLE {
  const MYTEXTSTYLE._();

  static TextStyle boldRoboto({
    Color color = Colors.white,
    FontWeight weight = FontWeight.bold,
    required FontType fontType,
  }) {
    return TextStyle(
      color: color,
      fontFamily: FontFamily.roboto,
      fontSize: fontType.size,
      fontWeight: weight,
    );
  }

  static TextStyle lightRoboto({
    Color color = Colors.white,
    FontWeight weight = FontWeight.w300,
    required FontType fontType,
  }) {
    return TextStyle(
      color: color,
      fontFamily: FontFamily.roboto,
      fontSize: fontType.size,
      fontWeight: weight,
    );
  }

  static TextStyle mediumRoboto({
    Color color = Colors.white,
    FontWeight weight = FontWeight.normal,
    TextDecoration? decoration,
    required FontType fontType,
  }) {
    return TextStyle(
      color: color,
      decoration: decoration,
      decorationColor: color,
      fontFamily: FontFamily.roboto,
      fontSize: fontType.size,
      fontWeight: weight,
    );
  }

  static TextStyle semiBoldRoboto({
    Color color = Colors.white,
    FontWeight weight = FontWeight.w600,
    required FontType fontType,
  }) {
    return TextStyle(
      color: color,
      fontFamily: FontFamily.roboto,
      fontSize: fontType.size,
      fontWeight: weight,
    );
  }

}
