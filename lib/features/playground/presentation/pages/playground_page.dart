import 'package:flashcards/features/playground/presentation/pages/flashcards_page.dart';
import 'package:flashcards/features/playground/presentation/pages/matching_challenge_page.dart';
import 'package:flashcards/features/playground/presentation/pages/quiz_mode_page.dart';
import 'package:flashcards/features/playground/presentation/pages/time_challenge_page.dart';
import 'package:flashcards/features/playground/presentation/widgets/popular_sets_item.dart';
import 'package:flashcards/features/playground/presentation/widgets/ready_to_practice_container.dart';
import 'package:flutter/material.dart';

class PlaygroundPage extends StatelessWidget {
  const PlaygroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Playground')),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        const ReadyToPracticeContainer(),
        ListTile(
          title: Text('Learning Modes'),
          shape: InputBorder.none,
        ),
        PopularSetsItem(
          title: 'Flashcards',
          subtitle: 'Review cards one by one',
          mode: 'Classic',
          icon: Icons.local_grocery_store_outlined,
          color: Colors.amber,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FlashcardsPage(),
              ),
            );
          },
        ),
        SizedBox(height: 8),
        PopularSetsItem(
          title: 'Quiz Mode',
          subtitle: 'Test your knowledge with multiple choice',
          mode: 'Popular',
          icon: Icons.gamepad,
          color: Colors.blue,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizModePage(),
              ),
            );
          },
        ),
        SizedBox(height: 8),
        PopularSetsItem(
          title: 'Time Challenge',
          subtitle: 'Race against the clock',
          mode: 'Advanced',
          icon: Icons.hourglass_empty_rounded,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TimeChallengePage(),
              ),
            );
          },
          color: Colors.red,
        ),
        SizedBox(height: 8),
        PopularSetsItem(
          title: 'Matching Game',
          subtitle: 'Match pairs of words',
          mode: 'Fun',
          icon: Icons.sports_cricket_outlined,
          color: Colors.green,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MatchingChallengePage(),
              ),
            );
          },
        ),
        SizedBox(height: 8),
        PopularSetsItem(
          title: 'Spaced Repetition',
          subtitle: 'Learn with scientifically proven methods',
          mode: 'Effective',
          icon: Icons.repeat,
          color: Colors.deepPurple,
        ),
        ListTile(
          title: Text('Daily Challenge'),
          shape: InputBorder.none,
        ),
        ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Colors.amber, width: 2),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.amber.withAlpha(40),
            foregroundColor: Colors.amber,
            child: Icon(Icons.flash_on_rounded),
          ),
          title: Text(
            "Today's Challenge",
            style: TextTheme.of(context).bodyMedium,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Complete 20 flashcards in Time Challenge mode',
                style: TextTheme.of(context).bodySmall,
              ),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: const Text('Start Challenge'),
              )
            ],
          ),
        )
      ]),
    );
  }
}
