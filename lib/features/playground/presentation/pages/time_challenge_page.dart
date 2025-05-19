import 'package:flashcards/features/playground/presentation/widgets/current_progress.dart';
import 'package:flutter/material.dart';

class TimeChallengePage extends StatelessWidget {
  const TimeChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcards'),
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [Text('1/10')],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          SizedBox(height: 24),
          CurrentProgress(),
          TimeChallengePage(),
          Text(
            'Score: 6',
            style: TextTheme.of(context).titleLarge,
          ),
          Spacer(flex: 5),
        ]),
      ),
    );
  }
}
