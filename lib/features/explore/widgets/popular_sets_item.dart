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
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      isThreeLine: true,
      title: Text(
        title,
        style: TextTheme.of(context).bodyMedium,
      ),
      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          subtitle,
          style: TextTheme.of(context).bodySmall,
        ),
        Row(spacing: 8, children: [
          const Icon(Icons.people_alt_outlined, size: 18),
          Text(
            info1,
            style: TextTheme.of(context).bodySmall,
          ),
          const Text('•'),
          Text(
            info2,
            style: TextTheme.of(context).bodySmall,
          ),
        ]),
      ]),
      leading: Align(
        widthFactor: 1,
        heightFactor: 1.2,
        alignment: const Alignment(-.6, 1),

        /// TODO, make a custom widget to handle [CircleAvatar]
        child: CircleAvatar(
          backgroundColor: color.withAlpha(40),
          child: Icon(icon, color: color),
        ),
      ),
      trailing: Align(
        widthFactor: 0,
        alignment: const Alignment(.8, -1),

        /// TODO, make a custom widget to handle [Card.outlined]
        child: Card.outlined(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 2,
            ),
            child: Text(
              level,
              style: TextTheme.of(context).labelLarge,
            ),
          ),
        ),
      ),
    );
  }
}
