import 'package:flutter/material.dart';

class TimeChallengeFlashcard extends StatelessWidget {
  final VoidCallback? onTap;
  final String language;
  final String word;
  final bool isRevealed;

  const TimeChallengeFlashcard({
    super.key,
    this.onTap,
    required this.language,
    required this.word,
    this.isRevealed = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        height: 230,
        width: MediaQuery.sizeOf(context).width - 40,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(children: [
              Spacer(flex: 3),
              Text(
                language,
                style: TextTheme.of(context).bodySmall,
              ),
              Spacer(),
              Text(
                word,
                style: TextTheme.of(context).titleLarge,
              ),
              if (!isRevealed)
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow_outlined),
                ),
              if (!isRevealed) Spacer(flex: 2),
              if (!isRevealed)
                Text(
                  'Tap to reveal the answer',
                  style: TextTheme.of(context).bodySmall,
                ),
              Spacer(flex: 3),
            ]),
          ),
        ),
      ),
    );
  }
}
