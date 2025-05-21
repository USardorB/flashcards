import 'package:flutter/material.dart';

class QuizVariants extends StatelessWidget {
  final void Function(int index) onTap;

  const QuizVariants({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          spacing: 12,
          children: [
            Text(
              'What is the Spanish word for \'hello\'?',
              style: TextTheme.of(context).bodyLarge,
            ),
            SizedBox(height: 12),
            ListTile(
              minTileHeight: 46,
              minVerticalPadding: 0,
              title: Text('Alik'),
              onTap: () => onTap(1),
            ),
            ListTile(
              minTileHeight: 46,
              minVerticalPadding: 0,
              title: Text('Salom'),
              onTap: () => onTap(2),
            ),
            ListTile(
              minTileHeight: 46,
              minVerticalPadding: 0,
              title: Text('VS Code'),
              onTap: () => onTap(3),
            ),
            ListTile(
              minTileHeight: 46,
              minVerticalPadding: 0,
              title: Text('Salom'),
              onTap: () => onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
