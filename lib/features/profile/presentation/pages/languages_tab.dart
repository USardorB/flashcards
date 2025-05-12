import 'package:flashcards/features/profile/presentation/widgets/continue_learning_item.dart';
import 'package:flutter/material.dart';

class LanguagesTab extends StatelessWidget {
  const LanguagesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(spacing: 8, children: [
      ContinueLearningItem(
        title: 'Spanish',
        subtitle: '120 words learned',
        level: 'Intermediate',
        icon: Icons.book,
        color: Colors.blueGrey,
      ),
      ContinueLearningItem(
        title: 'English',
        subtitle: '23282 words learned',
        level: 'Advanced',
        icon: Icons.backup_table,
        color: Colors.blueGrey,
      ),
    ]);
  }
}
