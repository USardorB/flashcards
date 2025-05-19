import 'package:flutter/material.dart';

class Flashcard extends StatelessWidget {
  final VoidCallback? onTap;
  const Flashcard({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        height: 230,
        width: MediaQuery.sizeOf(context).width - 40,
        child: InkWell(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(children: [
              Spacer(flex: 3),
              Text(
                'English',
                style: TextTheme.of(context).bodySmall,
              ),
              Spacer(),
              Text(
                'Hello',
                style: TextTheme.of(context).titleLarge,
              ),
              SizedBox(height: 8),
              Icon(Icons.play_arrow_outlined),
              Spacer(flex: 2),
              Text(
                'Tap to reveal the answer',
                style: TextTheme.of(context).bodySmall,
              ),
              Spacer(flex: 3),
              // TODO implememnt Correct incorrect buttons
            ]),
          ),
        ),
      ),
    );
  }
}
