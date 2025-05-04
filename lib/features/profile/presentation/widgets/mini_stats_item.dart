import 'package:flutter/material.dart';

class MiniStatsItem extends StatelessWidget {
  final String title;
  final String subtitle;
  const MiniStatsItem({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card.outlined(
        margin: const EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title),
              Text(subtitle, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
