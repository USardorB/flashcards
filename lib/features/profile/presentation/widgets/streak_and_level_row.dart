import 'package:flashcards/core/extensions/build_context.dart';
import 'package:flutter/material.dart';

class StreakAndLevelRow extends StatelessWidget {
  const StreakAndLevelRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Card.filled(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.fromWidth(10),
            vertical: context.fromHeight(2),
          ),
          child: Text(
            '💥 5 day streak',
            style: TextTheme.of(context).labelLarge,
          ),
        ),
      ),
      Card.outlined(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.fromWidth(10),
            vertical: context.fromHeight(2),
          ),
          child: Text(
            'Intermediate',
            style: TextTheme.of(context).labelLarge,
          ),
        ),
      ),
    ]);
  }
}
