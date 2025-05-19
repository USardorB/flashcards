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
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height - 300,
        width: MediaQuery.sizeOf(context).width - 40,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(children: [
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
              Spacer(),
              Text(
                'Tap to flip',
                style: TextTheme.of(context).bodySmall,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
