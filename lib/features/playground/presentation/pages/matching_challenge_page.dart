import 'package:flashcards/features/playground/presentation/widgets/current_progress.dart';
import 'package:flutter/material.dart';

class MatchingChallengePage extends StatelessWidget {
  const MatchingChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matching Game'),
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [
          TextButton.icon(
            onPressed: () {},
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

  Widget timerWidget(int secondsLeft) {
    return Row(spacing: 4, children: [
      Icon(Icons.timer_outlined),
      Text('${secondsLeft}s'),
    ]);
  }
}

class MatchingGameGird extends StatefulWidget {
  const MatchingGameGird({super.key});

  @override
  State<MatchingGameGird> createState() => _MatchingGameGirdState();
}

class _MatchingGameGirdState extends State<MatchingGameGird> {
  bool isShown = false;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      children: List.generate(12, (index) {
        return GestureDetector(
          onTap: () => setState(() => isShown = !isShown),
          child: Card.outlined(
            child: Center(
              child: AnimatedSwitcher(
                duration: Durations.medium4,
                child: isShown ? Text('The translation') : Text('?'),
              ),
            ),
          ),
        );
      }),
    );
  }
}
