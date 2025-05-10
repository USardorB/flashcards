import 'package:flutter/material.dart';

class ContinueLearningItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final double value;
  const ContinueLearningItem({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextTheme.of(context).bodyMedium,
      ),
      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        LinearProgressIndicator(
          value: value,
          minHeight: 6,
          borderRadius: BorderRadius.circular(4),
        ),
        Text(
          '${value * 100}% complete',
          style: TextTheme.of(context).bodySmall,
        ),
      ]),
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: color.withAlpha(40),
        child: Icon(icon, color: color),
      ),
      trailing: const Icon(Icons.play_arrow),
    );
  }
}
