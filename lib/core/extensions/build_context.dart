import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  // Taken from my real device: POCO X4 GT
  static const baseH = 895.0;
  static const baseW = 400.0;

  /// to get a portion of the screen
  double fromHeight(double h) => (MediaQuery.sizeOf(this).height / baseH) * h;
  double fromWidth(double w) => (MediaQuery.sizeOf(this).width / baseW) * w;

  /// to reduce the boilerplate of gaps
  SizedBox toWidth(double portion) => SizedBox(width: fromWidth(portion));
  SizedBox toHeight(double portion) => SizedBox(height: fromHeight(portion));
}
