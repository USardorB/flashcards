import 'package:flutter/material.dart';

class CurrentProgress extends StatelessWidget {
  const CurrentProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: .6,
      minHeight: 8,
      borderRadius: BorderRadius.circular(8),
    );
  }
}
