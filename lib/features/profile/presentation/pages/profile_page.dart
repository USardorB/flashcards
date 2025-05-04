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
    return const Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(children: [
              CircleAvatar(radius: 40),
              Text('John Doe'),
              Text('Joined April 2023'),
              StreakAndLevelRow(),
              SizedBox(height: 100, child: MiniStatsRow()),
              TabBar(tabs: [
                Tab(child: Text('Stats')),
                Tab(child: Text('Achievements')),
                Tab(child: Text('Languages')),
              ]),
              SizedBox(
                height: 500,
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
