import 'package:flutter/material.dart';

class Constants {
  static double kHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double kWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double kPadding(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }
}
