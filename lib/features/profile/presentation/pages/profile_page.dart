import 'package:flashcards/features/profile/presentation/pages/achievements_tab.dart';
import 'package:flashcards/features/profile/presentation/pages/languages_tab.dart';
import 'package:flashcards/features/profile/presentation/pages/stats_tab.dart';
import 'package:flashcards/features/profile/presentation/widgets/mini_stats_row.dart';
import 'package:flashcards/features/profile/presentation/widgets/streak_and_level_row.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              const CircleAvatar(radius: 40),
              Text(
                'John Doe',
                style: TextTheme.of(context).titleLarge,
              ),
              SizedBox(height: 2),
              Text(
                'Joined April 2023',
                style: TextTheme.of(context).labelMedium,
              ),
              SizedBox(height: 4),
              const StreakAndLevelRow(),
              SizedBox(height: 16),
              SizedBox(
                height: 100,
                child: MiniStatsRow(),
              ),
              SizedBox(height: 12),
              SizedBox(
                height: 46,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0x15626C79),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TabBar(
                    indicatorPadding: EdgeInsets.all(4),
                    tabs: [
                      Tab(child: Text('Stats', maxLines: 1)),
                      Tab(child: Text('Achievements', maxLines: 1)),
                      Tab(child: Text('Languages', maxLines: 1)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 520,
                child: TabBarView(children: [
                  StatsTab(),
                  AchievementsTab(),
                  LanguagesTab(),
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
