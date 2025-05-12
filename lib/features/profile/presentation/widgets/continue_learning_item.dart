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
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
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
          SizedBox(height: 8),
          LinearProgressIndicator(
            value: .6,
            minHeight: 6,
            borderRadius: BorderRadius.circular(6),
          ),
          SizedBox(height: 8),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              subtitle,
              style: TextTheme.of(context).bodySmall,
            ),
            Text(
              // TODO make this dynamic
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
