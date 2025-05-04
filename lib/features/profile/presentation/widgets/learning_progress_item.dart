import 'package:flutter/material.dart';

class LearningProgressItem extends StatelessWidget {
  final String title;
  final double value;

  const LearningProgressItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Text('${value * 100}%'),
          ],
        ),
        LinearProgressIndicator(value: value)
      ]),
    );
  }
}
