import 'package:flashcards/features/playground/presentation/widgets/popular_sets_item.dart';
import 'package:flashcards/features/playground/presentation/widgets/ready_to_practice_container.dart';
import 'package:flutter/material.dart';

class PlaygroundPage extends StatelessWidget {
  const PlaygroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Playground',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const ReadyToPracticeContainer(),
          const ListTile(title: Text('Learning Modes')),
          PopularSetsItem(
            title: 'Flashcards',
            subtitle: 'Review cards one by one',
            mode: 'Classic',
            icon: Icons.local_grocery_store_outlined,
            color: Colors.amber[100]!,
          ),
          PopularSetsItem(
            title: 'Quiz Mode',
            subtitle: 'Test your knowledge with multiple choice',
            mode: 'Popular',
            icon: Icons.gamepad,
            color: Colors.blue[100]!,
          ),
          PopularSetsItem(
            title: 'Time Challenge',
            subtitle: 'Race against the clock',
            mode: 'Advanced',
            icon: Icons.hourglass_empty_rounded,
            color: Colors.red[100]!,
          ),
          PopularSetsItem(
            title: 'Matching Game',
            subtitle: 'Match pairs of words',
            mode: 'Fun',
            icon: Icons.sports_cricket_outlined,
            color: Colors.green[100]!,
          ),
          PopularSetsItem(
            title: 'Spaced Repetition',
            subtitle: 'Learn with scientifically proven methods',
            mode: 'Effective',
            icon: Icons.repeat,
            color: Colors.deepPurple[100]!,
          ),
          const ListTile(title: Text('Daily Challenge')),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(),
            ),
            title: const Text("Today's Challenge"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Complete 20 flashcards in Time Challenge mode'),
                FilledButton(
                  onPressed: () {},
                  child: const Text('Start Challenge'),
                )
              ],
            ),
            leading: const CircleAvatar(
              child: Icon(Icons.flash_on_rounded),
            ),
          )
        ]),
      ),
    );
  }
}
