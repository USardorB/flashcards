import 'package:flutter/material.dart';

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
