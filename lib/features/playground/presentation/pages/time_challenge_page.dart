import 'package:flashcards/features/playground/presentation/widgets/current_progress.dart';
import 'package:flashcards/features/playground/presentation/widgets/flashcard_actions.dart';
import 'package:flashcards/features/playground/presentation/widgets/time_challenge_flashcard.dart';
import 'package:flutter/material.dart';

class TimeChallengePage extends StatefulWidget {
  const TimeChallengePage({super.key});

  @override
  State<TimeChallengePage> createState() => _TimeChallengePageState();
}

class _TimeChallengePageState extends State<TimeChallengePage> {
  bool isMain = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcards'),
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [
          TextButton.icon(
            onPressed: () {},
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
            onTap: () {
              isMain = !isMain;
              setState(() {});
            },
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

  Widget timerWidget(int secondsLeft) {
    return Row(spacing: 4, children: [
      Icon(Icons.timer_outlined),
      Text('${secondsLeft}s'),
    ]);
  }
}
