import 'package:flashcards/features/home/presentation/widgets/change_laugage.dart';
import 'package:flashcards/features/home/presentation/widgets/continue_learning_item.dart';
import 'package:flashcards/features/home/presentation/widgets/dashboard_daily_goal.dart';
import 'package:flashcards/features/home/presentation/widgets/dashboard_filler_cards.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LinguaFlash'),
        actions: [
          const ChangeLaugage(),
          const SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        child: Column(spacing: 12, children: [
          const DashboardDailyGoal(),
          SizedBox(
            height: 140,
            child: Row(spacing: 8, children: [
              DashboardFillerCards(
                title: 'Progress',
                subtitle: 'Track your learning\njourney',
                icon: Icons.trending_up,
                iconColor: ColorScheme.of(context).primary,
              ),
              const DashboardFillerCards(
                title: 'Achievements',
                subtitle: '5/20 badges earned',
                icon: Icons.workspace_premium_outlined,
                iconColor: Colors.amber,
              ),
            ]),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            shape: InputBorder.none,
            minTileHeight: 10,
            minVerticalPadding: 8,
            title: Text('Continue Learning'),
            trailing: TextButton(
              onPressed: () {},
              child: const Text('See all'),
            ),
          ),
          const ContinueLearningItem(
            title: 'Basic Phrases',
            value: .9,
            color: Colors.blue,
            icon: Icons.chrome_reader_mode,
          ),
          const ContinueLearningItem(
            title: 'Food & Dining',
            value: .3,
            color: Colors.red,
            icon: Icons.local_drink,
          ),
          const ContinueLearningItem(
            title: 'Travel Essentials',
            value: .4,
            color: Colors.green,
            icon: Icons.travel_explore,
          ),
        ]),
      ),
    );
  }
}
