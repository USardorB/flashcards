import 'package:flutter/material.dart';

class DashboardDailyGoal extends StatelessWidget {
  const DashboardDailyGoal({super.key});

  @override
  Widget build(BuildContext context) {
    final smallTitle = TextTheme.of(context).titleSmall?.copyWith(
          color: ColorScheme.of(context).surface,
        );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF14b8a6), Color(0xFF10b981)],
          stops: [0, 0.7],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          const SizedBox(height: 16),
          Text(
            'Daily Goal',
            style: TextTheme.of(context).titleMedium?.copyWith(
                  color: ColorScheme.of(context).surface,
                ),
          ),
          LinearProgressIndicator(
            value: .65,
            minHeight: 8,
            borderRadius: BorderRadius.circular(4),
            backgroundColor: const Color(0x9FFFFFFF),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('65 XP today', style: smallTitle),
            Text('100 XP goal', style: smallTitle),
          ]),
          ListTile(
            leading: const Icon(Icons.schedule, color: Colors.white),
            contentPadding: EdgeInsets.zero,
            title: Text('5 day streak! Keep it up!', style: smallTitle),
          ),
          const SizedBox(height: 6),
        ],
      ),
    );
  }
}
