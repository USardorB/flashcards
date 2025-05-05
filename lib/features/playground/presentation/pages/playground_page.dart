import 'package:flashcards/features/playground/presentation/widgets/popular_sets_item.dart';
import 'package:flashcards/features/playground/presentation/widgets/ready_to_practice_container.dart';
import 'package:flutter/material.dart';

class PlaygroundPage extends StatelessWidget {
  const PlaygroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Playground')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const ReadyToPracticeContainer(),
          const ListTile(
            title: Text(
              'Learning Modes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            shape: InputBorder.none,
            minVerticalPadding: 18,
          ),
          PopularSetsItem(
            title: 'Flashcards',
            subtitle: 'Review cards one by one',
            mode: 'Classic',
            icon: Icons.local_grocery_store_outlined,
            color: Colors.amber,
          ),
          PopularSetsItem(
            title: 'Quiz Mode',
            subtitle: 'Test your knowledge with multiple choice',
            mode: 'Popular',
            icon: Icons.gamepad,
            color: Colors.blue,
          ),
          PopularSetsItem(
            title: 'Time Challenge',
            subtitle: 'Race against the clock',
            mode: 'Advanced',
            icon: Icons.hourglass_empty_rounded,
            color: Colors.red,
          ),
          PopularSetsItem(
            title: 'Matching Game',
            subtitle: 'Match pairs of words',
            mode: 'Fun',
            icon: Icons.sports_cricket_outlined,
            color: Colors.green,
          ),
          PopularSetsItem(
            title: 'Spaced Repetition',
            subtitle: 'Learn with scientifically proven methods',
            mode: 'Effective',
            icon: Icons.repeat,
            color: Colors.deepPurple,
          ),
          const ListTile(
            title: Text('Daily Challenge'),
            shape: InputBorder.none,
            minVerticalPadding: 18,
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Colors.amber, width: 2),
            ),
            title: Text(
              "Today's Challenge",
              style: TextTheme.of(context).bodyMedium,
            ),
            minVerticalPadding: 16,
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Complete 20 flashcards in Time Challenge mode',
                  style: TextTheme.of(context).bodySmall,
                ),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(backgroundColor: Colors.amber),
                  child: const Text('Start Challenge'),
                )
              ],
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.amber.withAlpha(40),
              foregroundColor: Colors.amber,
              child: Icon(Icons.flash_on_rounded),
            ),
          )
        ]),
      ),
    );
  }
}
