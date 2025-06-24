import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class TimeChallengePage extends StatefulWidget {
  /// [TimeChallengePage], a page that can be accessed using BottomNavbar.
  /// This page is a game where the user has to answer questions.
  /// The game is a time challenge, where the user has to answer as many questions as possible in a limited time.
  const TimeChallengePage({super.key});

  @override
  State<TimeChallengePage> createState() => _TimeChallengePageState();
}

class _TimeChallengePageState extends State<TimeChallengePage> {
  // [isMain] is a boolean that indicates if the main question is displayed or the answer.
  bool isMain = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcards'),
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
          timerWidget(10),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          SizedBox(height: 24),
          CurrentProgress(),
          GestureDetector(
            onTap: () => setState(() => isMain = !isMain),
            child: AnimatedSwitcher(
              duration: Durations.medium4,
              child: isMain
                  ? TimeChallengeFlashcard(
                      key: Key('Question'),
                      language: 'asd',
                      word: 'asd',
                      isRevealed: !isMain,
                    )
                  : TimeChallengeFlashcard(
                      key: Key('Answer'),
                      language: 'asd',
                      word: 'asd',
                      isRevealed: !isMain,
                    ),
            ),
          ),
          FlashcardActions(),
          SizedBox(height: 12),
          Text(
            'Score: 6',
            style: TextTheme.of(context).titleLarge,
          ),
          // TODO use when timer is 0
          // TimerEndResults()
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
    return Row(spacing: 4, children: [
      Icon(Icons.timer_outlined),
      Text('${secondsLeft}s'),
    ]);
  }
}
