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
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.black12),
        borderRadius: BorderRadius.circular(12),
      ),
      horizontalTitleGap: 12,
      minVerticalPadding: 16,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        Card.outlined(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Text(level, style: const TextStyle(fontSize: 12)),
          ),
        )
      ]),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const LinearProgressIndicator(
              value: .6, backgroundColor: Colors.black12),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(subtitle, style: const TextStyle(color: Colors.black38)),
            const Text('45%')
          ]),
        ],
      ),
      leading: CircleAvatar(
        radius: 26,
        backgroundColor: color,
        child: Icon(icon),
      ),
    );
  }
}
