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
      padding: const EdgeInsets.all(16).copyWith(top: 0),
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            title,
            style: TextTheme.of(context).titleSmall,
          ),
          Text(
            '${value * 100}%',
            style: TextTheme.of(context).bodySmall,
          ),
        ]),
        LinearProgressIndicator(
          value: value,
          minHeight: 8,
          borderRadius: BorderRadius.circular(8),
        )
      ]),
    );
  }
}
