import 'package:flutter/material.dart';

class TimerEndResults extends StatelessWidget {
  const TimerEndResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Time\'s Up!',
              textAlign: TextAlign.center,
              style: TextTheme.of(context).titleLarge,
            ),
            SizedBox(height: 8),
            Text(
              'You answered 0 cards correctly',
              textAlign: TextAlign.center,
              style: TextTheme.of(context).titleSmall,
            ),
            SizedBox(height: 24),
            CircleAvatar(
              backgroundColor: ColorScheme.of(context).primary.withAlpha(40),
              foregroundColor: ColorScheme.of(context).primary,
              radius: 64,
              child: Text(
                '0',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            FilledButton(
              onPressed: () {},
              child: Text('Try Again'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: Theme.of(context).filledButtonTheme.style?.shape,
              ),
              child: Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }
}
