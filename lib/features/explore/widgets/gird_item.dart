import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final Color color;
  const GridItem({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color.withAlpha(40),
            child: Icon(Icons.book_outlined, color: color),
          ),
          const SizedBox(height: 4),
          Text('Beginner', style: TextTheme.of(context).bodyMedium),
          Text('45 sets', style: TextTheme.of(context).bodySmall),
        ],
      ),
    );
  }
}
