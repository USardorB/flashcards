import 'package:flutter/material.dart';

class StreakAndLevelRow extends StatelessWidget {
  const StreakAndLevelRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Card.filled(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Text('💥 5 day streak'),
        ),
      ),
      Card.outlined(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Text('Intermediate'),
        ),
      ),
    ]);
  }
}
