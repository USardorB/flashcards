import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  const GridItem({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: color.withAlpha(40),
          child: Icon(Icons.book_outlined, color: color),
        ),
        const SizedBox(height: 4),
        Text(title),
        Text(
          subtitle,
          style: TextTheme.of(context).bodySmall,
        ),
      ]),
    );
  }
}
