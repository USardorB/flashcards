import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  /// to get a portion of the screen
  double fromHeight(double portion) =>
      MediaQuery.sizeOf(this).height * portion / 100;
  double fromWidth(double portion) =>
      MediaQuery.sizeOf(this).width * portion / 100;

  /// to reduce the boilerplate of gaps
  SizedBox toWidth(double portion) => SizedBox(width: fromWidth(portion));
  SizedBox toHeight(double portion) => SizedBox(height: fromHeight(portion));
}
