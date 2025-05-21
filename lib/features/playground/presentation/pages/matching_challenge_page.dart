import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class MatchingChallengePage extends StatelessWidget {
  /// [MatchingChallengePage], a page that can be accessed using BottomNavbar.
  /// This page is a game where the user has to match words with their translations.
  /// It is a fun and interactive way to learn new vocabulary.
  /// The page contains a grid of cards, each card has a word or a translation.
  /// When the user taps on a card, it flips to reveal the word or translation.
  const MatchingChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matching Game'),
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [
          TextButton.icon(
            onPressed: () {
              // The reset button will reset the game. This is for cases where the user wants to start over.
              // It will reset the [score], the [moves], the [timer], and the [cards].
              //  TODO: implement the logic to reset the game.
            },
            label: Text('Reset'),
            icon: Icon(Icons.restore),
          ),
          timerWidget(5),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          SizedBox(height: 24),
          CurrentProgress(),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Moves: 0'), Text('Matches: 0/6')],
          ),
          SizedBox(height: 24),
          MatchingGameGird(),
        ]),
      ),
    );
  }

  /// [timerWidget] is a widget that shows the timer for the game.
  /// It shows the time left in seconds and an icon.
  /// The timer is used to limit the time the user has to complete the game.
  /// The timer is displayed in the app bar.
  /// The timer will have the logic of changing the color of the text based on the time left.
  Widget timerWidget(int secondsLeft) {
    // TODO: implement the logic to change the color of the text based on the time left.
    return Row(spacing: 4, children: [
      Icon(Icons.timer_outlined),
      Text('${secondsLeft}s'),
    ]);
  }
}
