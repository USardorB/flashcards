import 'package:flashcards/core/extensions/build_context.dart';
import 'package:flashcards/features/explore/widgets/popular_sets_item.dart';
import 'package:flutter/material.dart';

class PopularTab extends StatelessWidget {
  const PopularTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        spacing: context.fromHeight(12),
        children: [
          const PopularSetsItem(
            title: 'Essential Phrases',
            subtitle: 'Most common everyday expressions',
            info1: '12.5k learners',
            info2: '120 cards',
            level: 'Advanced',
            icon: Icons.book_outlined,
            color: Colors.yellow,
          ),
          const PopularSetsItem(
            title: 'Travel Vocabulary',
            subtitle: 'Words and phrases for travelers',
            info1: '2.5k learners',
            info2: '85 cards',
            level: 'Beginner',
            icon: Icons.travel_explore,
            color: Colors.red,
          ),
          const PopularSetsItem(
            title: 'Business Russian',
            subtitle: 'Professional vocabulary for work',
            info1: '5.7k learners',
            info2: '150 cards',
            level: 'Mixed',
            icon: Icons.business,
            color: Colors.blue,
          ),
          const PopularSetsItem(
            title: 'Food & Dining',
            subtitle: 'Restaurant and food vocabulary',
            info1: '7.3k learners',
            info2: '95 cards',
            level: 'Intermediate',
            icon: Icons.food_bank,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
