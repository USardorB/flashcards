import 'package:flutter/material.dart';

/// As we now have no server, we will use a static challenge for the day
class ChallengeOfTheDay extends StatelessWidget {
  /// [ChallengeOfTheDay] - shown in the [PlaygroundPage], a widget that shows the challenge of the day,
  /// challenge comes from the server and is updated every day at midnight
  const ChallengeOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Complete 20 flashcards in Time Challenge mode',
          style: TextTheme.of(context).bodySmall,
        ),
        FilledButton(
          onPressed: () {
            // TODO: Implement the challenge of the day
          },
          style: FilledButton.styleFrom(
            backgroundColor: Colors.amber,
          ),
          child: const Text('Start Challenge'),
        )
      ]),
    );
  }
}
