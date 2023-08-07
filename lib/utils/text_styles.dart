import 'package:dicogram/utils/constants.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle title = const TextStyle(
    fontFamily: 'Lato',
    fontWeight: FontWeight.w700,
    fontSize: 18.0,
    color: textColor,
  );

  static TextStyle subtitle = const TextStyle(
    fontFamily: 'Lato',
    fontWeight: FontWeight.normal,
    fontSize: 14.0,
    color: textColor,
  );

  static TextStyle body = const TextStyle(
    fontFamily: 'Lato',
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
    color: textColor,
  );

  static TextStyle splash = const TextStyle(
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w700,
    fontSize: 34.0,
    color: Colors.white,
  );
}
