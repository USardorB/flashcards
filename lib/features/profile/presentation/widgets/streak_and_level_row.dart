import 'package:flutter/material.dart';

class StreakAndLevelRow extends StatelessWidget {
  const StreakAndLevelRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Card.filled(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Text(
            '💥 5 day streak',
            style: TextTheme.of(context).bodySmall?.copyWith(
                  color: ColorScheme.of(context).onSurface,
                ),
          ),
        ),
      ),
      Card.outlined(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Text(
            'Intermediate',
            style: TextTheme.of(context).bodySmall?.copyWith(
                  color: ColorScheme.of(context).onSurface,
                ),
          ),
        ),
      ),
    ]);
  }
}
