import 'package:flashcards/core/extensions/build_context.dart';
import 'package:flutter/material.dart';

class ContinueLearningItem extends StatelessWidget {
  final String title;
  final String level;
  final IconData icon;
  final Color color;
  final String subtitle;
  const ContinueLearningItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: TextTheme.of(context).bodyMedium,
        ),
        Card.outlined(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.fromWidth(10),
              vertical: context.fromHeight(2),
            ),
            child: Text(
              level,
              style: TextTheme.of(context).labelLarge,
            ),
          ),
        )
      ]),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          context.toHeight(8),
          LinearProgressIndicator(
            value: .6,
            minHeight: 6,
            borderRadius: BorderRadius.circular(6),
          ),
          context.toHeight(8),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              subtitle,
              style: TextTheme.of(context).bodySmall,
            ),
            Text(
              '45%',
              style: TextTheme.of(context).bodySmall,
            )
          ]),
        ],
      ),
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: color.withAlpha(40),
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
