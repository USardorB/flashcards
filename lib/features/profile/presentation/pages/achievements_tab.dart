import 'package:flashcards/features/explore/widgets/gird_item.dart';
import 'package:flutter/material.dart';

class AchievementsTab extends StatelessWidget {
  const AchievementsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) => const GridItem(
        color: Color(0xFF416969),
        subtitle: 'Beginner',
        title: '32 sets',
      ),
    );
  }
}
