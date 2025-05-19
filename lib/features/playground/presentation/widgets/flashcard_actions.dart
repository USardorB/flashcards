import 'package:flutter/material.dart';

// TODO eliminate this
class FlashcardActions extends StatelessWidget {
  const FlashcardActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      OutlinedButton.icon(
        style: ButtonStyle(
          shape: WidgetStateProperty.fromMap({
            WidgetState.any: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          }),
          backgroundColor: WidgetStatePropertyAll(
            Color.fromARGB(255, 255, 0, 0).withAlpha(60),
          ),
        ),
        onPressed: () {},
        label: Text('Still Learning'),
        icon: Icon(Icons.close),
      ),
      OutlinedButton.icon(
        style: ButtonStyle(
          shape: WidgetStateProperty.fromMap({
            WidgetState.any: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          }),
          backgroundColor: WidgetStatePropertyAll(
            Color.fromARGB(255, 0, 255, 8).withAlpha(40),
          ),
        ),
        onPressed: () {},
        label: Text('Still Learning'),
        icon: Icon(Icons.sentiment_very_satisfied),
      ),
    ]);
  }
}
