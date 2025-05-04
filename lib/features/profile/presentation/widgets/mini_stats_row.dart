import 'package:flashcards/features/profile/presentation/widgets/mini_stats_item.dart';
import 'package:flutter/material.dart';

class MiniStatsRow extends StatelessWidget {
  const MiniStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 12,
      children: [
        MiniStatsItem(title: '325 ', subtitle: 'Total XP'),
        MiniStatsItem(title: '42 ', subtitle: 'Cards Mastered'),
        MiniStatsItem(title: '3 ', subtitle: 'Languages'),
      ],
    );
  }
}
