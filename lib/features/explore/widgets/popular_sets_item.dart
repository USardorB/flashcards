import 'package:flutter/material.dart';

class PopularSetsItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String info1;
  final String info2;
  final String level;
  final IconData icon;
  final Color color;
  const PopularSetsItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.info1,
    required this.info2,
    required this.level,
    required this.icon,
    required this.color,
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
      title: Text(title, style: TextTheme.of(context).bodyMedium),
      isThreeLine: true,
      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(subtitle, style: TextTheme.of(context).bodySmall),
        Row(spacing: 8, children: [
          const Icon(Icons.people_alt_outlined, size: 18),
          Text(info1, style: TextTheme.of(context).bodySmall),
          const Text('•'),
          Text(info2, style: TextTheme.of(context).bodySmall),
        ]),
      ]),
      leading: Align(
        widthFactor: 1,
        heightFactor: 1.2,
        alignment: const Alignment(-.6, 1),
        child: CircleAvatar(
          backgroundColor: color.withAlpha(40),
          child: Icon(icon, color: color),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      trailing: Align(
        widthFactor: 0,
        alignment: const Alignment(.8, -1),
        child: Card.outlined(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            child: Text(
              level,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
