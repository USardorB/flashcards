import 'package:flutter/material.dart';

class PopularSetsItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String mode;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;
  const PopularSetsItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.mode,
    required this.icon,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      leading: CircleAvatar(
        backgroundColor: color.withAlpha(40),
        child: Icon(icon, color: color),
      ),
      title: Text(
        title,
        style: TextTheme.of(context).bodyMedium,
        maxLines: 1,
      ),
      subtitle: Text(
        subtitle,
        style: TextTheme.of(context).bodySmall,
        maxLines: 2,
        overflow: TextOverflow.fade,
      ),
      trailing: Align(
        widthFactor: 0,
        alignment: const Alignment(1, -.5),
        child: Card.outlined(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Text(
              mode,
              style: TextTheme.of(context).labelLarge,
            ),
          ),
        ),
      ),
    );
  }
}
