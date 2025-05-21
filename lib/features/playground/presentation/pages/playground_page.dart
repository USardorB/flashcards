import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'pages.dart';

class PlaygroundPage extends StatelessWidget {
  /// [PlaygroundPage], a page that can be accessed using BottomNavbar
  /// This page is a collection of games and activities
  /// that can be used to practice and learn new words.
  /// It contains a list of games and activities that can be accessed
  /// by tapping on the corresponding item.
  /// It also contains a daily challenge[ChallengeOfTheDay] that can be completed
  const PlaygroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Playground')),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        const ReadyToPracticeContainer(),
        const ListTile(
          title: Text('Learning Modes'),
          shape: InputBorder.none,
        ),
        PlaygroundItem(
          title: 'Flashcards',
          subtitle: 'Review cards one by one',
          mode: 'Classic',
          icon: Icons.local_grocery_store_outlined,
          color: Colors.amber,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FlashcardsPage(),
            ),
          ),
        ),
        const SizedBox(height: 8),
        PlaygroundItem(
          title: 'Quiz Mode',
          subtitle: 'Test your knowledge with multiple choice',
          mode: 'Popular',
          icon: Icons.gamepad,
          color: Colors.blue,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizModePage(),
            ),
          ),
        ),
        const SizedBox(height: 8),
        PlaygroundItem(
          title: 'Time Challenge',
          subtitle: 'Race against the clock',
          mode: 'Advanced',
          icon: Icons.hourglass_empty_rounded,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TimeChallengePage(),
            ),
          ),
          color: Colors.red,
        ),
        const SizedBox(height: 8),
        PlaygroundItem(
          title: 'Matching Game',
          subtitle: 'Match pairs of words',
          mode: 'Fun',
          icon: Icons.sports_cricket_outlined,
          color: Colors.green,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MatchingChallengePage(),
            ),
          ),
        ),
        const SizedBox(height: 8),
        PlaygroundItem(
          title: 'Spaced Repetition',
          subtitle: 'Learn with scientifically proven methods',
          mode: 'Effective',
          icon: Icons.repeat,
          color: Colors.deepPurple,
        ),
        const ListTile(
          title: Text('Daily Challenge'),
          shape: InputBorder.none,
        ),
        const ChallengeOfTheDay()
      ]),
    );
  }
}
